# frozen_string_literal: true

require_relative "wire_helper"
require "net/http"
require "json"
require "uri"
require "payabli"

class TokenStorageWireTest < Minitest::Test
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

  def test_token_storage_add_method_with_wiremock
    test_id = "token_storage.add_method.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.token_storage.add_method(
      customer_data: {
        customer_id: 4440
      },
      entry_point: "f743aed24a",
      fallback_auth: true,
      payment_method: {
        cardcvv: "123",
        cardexp: "02/25",
        card_holder: "John Doe",
        cardnumber: "4111111111111111",
        cardzip: "12345",
        method_: "card"
      },
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "token_storage.add_method.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/TokenStorage/add",
      query_params: nil,
      expected: 1
    )
  end

  def test_token_storage_get_method_with_wiremock
    test_id = "token_storage.get_method.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.token_storage.get_method(
      method_id: "32-8877drt00045632-678",
      card_expiration_format: 1,
      include_temporary: false,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "token_storage.get_method.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/TokenStorage/32-8877drt00045632-678",
      query_params: nil,
      expected: 1
    )
  end

  def test_token_storage_remove_method_with_wiremock
    test_id = "token_storage.remove_method.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.token_storage.remove_method(
      method_id: "32-8877drt00045632-678",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "token_storage.remove_method.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/TokenStorage/32-8877drt00045632-678",
      query_params: nil,
      expected: 1
    )
  end

  def test_token_storage_update_method_with_wiremock
    test_id = "token_storage.update_method.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.token_storage.update_method(
      method_id: "32-8877drt00045632-678",
      customer_data: {
        customer_id: 4440
      },
      entry_point: "f743aed24a",
      fallback_auth: true,
      payment_method: {
        cardcvv: "123",
        cardexp: "02/25",
        card_holder: "John Doe",
        cardnumber: "4111111111111111",
        cardzip: "12345",
        method_: "card"
      },
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "token_storage.update_method.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "PUT",
      url_path: "/TokenStorage/32-8877drt00045632-678",
      query_params: nil,
      expected: 1
    )
  end
end
