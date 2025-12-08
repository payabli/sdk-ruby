# frozen_string_literal: true

require "test_helper"
require "net/http"
require "json"
require "uri"
require "payabli"

class BoardingWireTest < Minitest::Test
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

  def test_boarding_add_application_with_wiremock
    test_id = "boarding.add_application.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.boarding.add_application(request_options: { base_url: WIREMOCK_BASE_URL,
                                                       additional_headers: {
                                                         "X-Test-Id" => "boarding.add_application.0"
                                                       } })

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Boarding/app",
      query_params: nil,
      expected: 1
    )
  end

  def test_boarding_delete_application_with_wiremock
    test_id = "boarding.delete_application.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.boarding.delete_application(
      app_id: 352,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "boarding.delete_application.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/Boarding/app/352",
      query_params: nil,
      expected: 1
    )
  end

  def test_boarding_get_application_with_wiremock
    test_id = "boarding.get_application.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.boarding.get_application(
      app_id: 352,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "boarding.get_application.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Boarding/read/352",
      query_params: nil,
      expected: 1
    )
  end

  def test_boarding_get_application_by_auth_with_wiremock
    test_id = "boarding.get_application_by_auth.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.boarding.get_application_by_auth(
      x_id: "17E",
      email: "admin@email.com",
      reference_id: "n6UCd1f1ygG7",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "boarding.get_application_by_auth.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Boarding/read/17E",
      query_params: nil,
      expected: 1
    )
  end

  def test_boarding_get_by_id_link_application_with_wiremock
    test_id = "boarding.get_by_id_link_application.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.boarding.get_by_id_link_application(
      boarding_link_id: 91,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "boarding.get_by_id_link_application.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Boarding/linkbyId/91",
      query_params: nil,
      expected: 1
    )
  end

  def test_boarding_get_by_template_id_link_application_with_wiremock
    test_id = "boarding.get_by_template_id_link_application.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.boarding.get_by_template_id_link_application(
      template_id: 80,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "boarding.get_by_template_id_link_application.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Boarding/linkbyTemplate/80",
      query_params: nil,
      expected: 1
    )
  end

  def test_boarding_get_external_application_with_wiremock
    test_id = "boarding.get_external_application.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.boarding.get_external_application(
      app_id: 352,
      mail_2: "mail2",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "boarding.get_external_application.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "PUT",
      url_path: "/Boarding/applink/352/mail2",
      query_params: nil,
      expected: 1
    )
  end

  def test_boarding_get_link_application_with_wiremock
    test_id = "boarding.get_link_application.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.boarding.get_link_application(
      boarding_link_reference: "myorgaccountname-00091",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "boarding.get_link_application.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Boarding/link/myorgaccountname-00091",
      query_params: nil,
      expected: 1
    )
  end

  def test_boarding_list_applications_with_wiremock
    test_id = "boarding.list_applications.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.boarding.list_applications(
      org_id: 123,
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "boarding.list_applications.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/boarding/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_boarding_list_boarding_links_with_wiremock
    test_id = "boarding.list_boarding_links.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.boarding.list_boarding_links(
      org_id: 123,
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "boarding.list_boarding_links.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/boardinglinks/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_boarding_update_application_with_wiremock
    test_id = "boarding.update_application.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.boarding.update_application(
      app_id: 352,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "boarding.update_application.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "PUT",
      url_path: "/Boarding/app/352",
      query_params: nil,
      expected: 1
    )
  end
end
