# frozen_string_literal: true

require "test_helper"
require "net/http"
require "json"
require "uri"
require "payabli"

class UserWireTest < Minitest::Test
  WIREMOCK_BASE_URL = "http://localhost:8080"
  WIREMOCK_ADMIN_URL = "http://localhost:8080/__admin"

  def setup
    super
    return if ENV["RUN_WIRE_TESTS"] == "true"

    skip "Wire tests are disabled by default. Set RUN_WIRE_TESTS=true to enable them."
  end

  def verify_request_count(test_id:, method:, url_path:, expected:, query_params: nil)
    uri = URI("#{WIREMOCK_ADMIN_URL}/requests/find")
    http = Net::HTTP.new(uri.host, uri.port)
    post_request = Net::HTTP::Post.new(uri.path, { "Content-Type" => "application/json" })

    request_body = { "method" => method, "urlPath" => url_path }
    request_body["headers"] = { "X-Test-Id" => { "equalTo" => test_id } }
    request_body["queryParameters"] = query_params.transform_values { |v| { "equalTo" => v } } if query_params

    post_request.body = request_body.to_json
    response = http.request(post_request)
    result = JSON.parse(response.body)
    requests = result["requests"] || []

    assert_equal expected, requests.length, "Expected #{expected} requests, found #{requests.length}"
  end

  def test_user_add_user_with_wiremock
    test_id = "user.add_user.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.user.add_user(request_options: { base_url: WIREMOCK_BASE_URL,
                                            additional_headers: {
                                              "X-Test-Id" => "user.add_user.0"
                                            } })

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/User",
      query_params: nil,
      expected: 1
    )
  end

  def test_user_auth_refresh_user_with_wiremock
    test_id = "user.auth_refresh_user.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.user.auth_refresh_user(request_options: { base_url: WIREMOCK_BASE_URL,
                                                     additional_headers: {
                                                       "X-Test-Id" => "user.auth_refresh_user.0"
                                                     } })

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/User/authrefresh",
      query_params: nil,
      expected: 1
    )
  end

  def test_user_auth_reset_user_with_wiremock
    test_id = "user.auth_reset_user.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.user.auth_reset_user(request_options: { base_url: WIREMOCK_BASE_URL,
                                                   additional_headers: {
                                                     "X-Test-Id" => "user.auth_reset_user.0"
                                                   } })

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/User/authreset",
      query_params: nil,
      expected: 1
    )
  end

  def test_user_auth_user_with_wiremock
    test_id = "user.auth_user.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.user.auth_user(
      provider: "provider",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "user.auth_user.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/User/auth/provider",
      query_params: nil,
      expected: 1
    )
  end

  def test_user_change_psw_user_with_wiremock
    test_id = "user.change_psw_user.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.user.change_psw_user(request_options: { base_url: WIREMOCK_BASE_URL,
                                                   additional_headers: {
                                                     "X-Test-Id" => "user.change_psw_user.0"
                                                   } })

    verify_request_count(
      test_id: test_id,
      method: "PUT",
      url_path: "/User/authpsw",
      query_params: nil,
      expected: 1
    )
  end

  def test_user_delete_user_with_wiremock
    test_id = "user.delete_user.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.user.delete_user(
      user_id: 1_000_000,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "user.delete_user.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/User/1000000",
      query_params: nil,
      expected: 1
    )
  end

  def test_user_edit_mfa_user_with_wiremock
    test_id = "user.edit_mfa_user.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.user.edit_mfa_user(
      user_id: 1_000_000,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "user.edit_mfa_user.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "PUT",
      url_path: "/User/mfa/1000000",
      query_params: nil,
      expected: 1
    )
  end

  def test_user_edit_user_with_wiremock
    test_id = "user.edit_user.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.user.edit_user(
      user_id: 1_000_000,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "user.edit_user.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "PUT",
      url_path: "/User/1000000",
      query_params: nil,
      expected: 1
    )
  end

  def test_user_get_user_with_wiremock
    test_id = "user.get_user.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.user.get_user(
      user_id: 1_000_000,
      entry: "478ae1234",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "user.get_user.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/User/1000000",
      query_params: nil,
      expected: 1
    )
  end

  def test_user_logout_user_with_wiremock
    test_id = "user.logout_user.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.user.logout_user(request_options: { base_url: WIREMOCK_BASE_URL,
                                               additional_headers: {
                                                 "X-Test-Id" => "user.logout_user.0"
                                               } })

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/User/authlogout",
      query_params: nil,
      expected: 1
    )
  end

  def test_user_resend_mfa_code_with_wiremock
    test_id = "user.resend_mfa_code.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.user.resend_mfa_code(
      entry: "Entry",
      entry_type: 1,
      usrname: "usrname",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "user.resend_mfa_code.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/User/resendmfa/usrname/Entry/1",
      query_params: nil,
      expected: 1
    )
  end

  def test_user_validate_mfa_user_with_wiremock
    test_id = "user.validate_mfa_user.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.user.validate_mfa_user(request_options: { base_url: WIREMOCK_BASE_URL,
                                                     additional_headers: {
                                                       "X-Test-Id" => "user.validate_mfa_user.0"
                                                     } })

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/User/mfa",
      query_params: nil,
      expected: 1
    )
  end
end
