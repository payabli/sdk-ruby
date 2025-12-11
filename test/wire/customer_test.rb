# frozen_string_literal: true

require "test_helper"
require "net/http"
require "json"
require "uri"
require "payabli"

class CustomerWireTest < Minitest::Test
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

  def test_customer_add_customer_with_wiremock
    test_id = "customer.add_customer.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.customer.add_customer(
      entry: "8cfec329267",
      customer_number: "12356ACB",
      firstname: "Irene",
      lastname: "Canizales",
      email: "irene@canizalesconcrete.com",
      address_1: "123 Bishop's Trail",
      city: "Mountain City",
      state: "TN",
      zip: "37612",
      country: "US",
      time_zone: -5,
      identifier_fields: ["email"],
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "customer.add_customer.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Customer/single/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_customer_delete_customer_with_wiremock
    test_id = "customer.delete_customer.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.customer.delete_customer(
      customer_id: 998,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "customer.delete_customer.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/Customer/998",
      query_params: nil,
      expected: 1
    )
  end

  def test_customer_get_customer_with_wiremock
    test_id = "customer.get_customer.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.customer.get_customer(
      customer_id: 998,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "customer.get_customer.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Customer/998",
      query_params: nil,
      expected: 1
    )
  end

  def test_customer_link_customer_transaction_with_wiremock
    test_id = "customer.link_customer_transaction.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.customer.link_customer_transaction(
      customer_id: 998,
      trans_id: "45-as456777hhhhhhhhhh77777777-324",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "customer.link_customer_transaction.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Customer/link/998/45-as456777hhhhhhhhhh77777777-324",
      query_params: nil,
      expected: 1
    )
  end

  def test_customer_request_consent_with_wiremock
    test_id = "customer.request_consent.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.customer.request_consent(
      customer_id: 998,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "customer.request_consent.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Customer/998/consent",
      query_params: nil,
      expected: 1
    )
  end

  def test_customer_update_customer_with_wiremock
    test_id = "customer.update_customer.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.customer.update_customer(
      customer_id: 998,
      firstname: "Irene",
      lastname: "Canizales",
      address_1: "145 Bishop's Trail",
      city: "Mountain City",
      state: "TN",
      zip: "37612",
      country: "US",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "customer.update_customer.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "PUT",
      url_path: "/Customer/998",
      query_params: nil,
      expected: 1
    )
  end
end
