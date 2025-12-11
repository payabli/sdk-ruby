# frozen_string_literal: true

require_relative "wire_helper"
require "net/http"
require "json"
require "uri"
require "payabli"

class PaymentMethodDomainWireTest < Minitest::Test
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

  def test_payment_method_domain_add_payment_method_domain_with_wiremock
    test_id = "payment_method_domain.add_payment_method_domain.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.payment_method_domain.add_payment_method_domain(
      domain_name: "checkout.example.com",
      entity_id: 109,
      entity_type: "paypoint",
      apple_pay: {
        is_enabled: true
      },
      google_pay: {
        is_enabled: true
      },
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "payment_method_domain.add_payment_method_domain.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/PaymentMethodDomain",
      query_params: nil,
      expected: 1
    )
  end

  def test_payment_method_domain_cascade_payment_method_domain_with_wiremock
    test_id = "payment_method_domain.cascade_payment_method_domain.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.payment_method_domain.cascade_payment_method_domain(
      domain_id: "pmd_b8237fa45c964d8a9ef27160cd42b8c5",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "payment_method_domain.cascade_payment_method_domain.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/PaymentMethodDomain/pmd_b8237fa45c964d8a9ef27160cd42b8c5/cascade",
      query_params: nil,
      expected: 1
    )
  end

  def test_payment_method_domain_delete_payment_method_domain_with_wiremock
    test_id = "payment_method_domain.delete_payment_method_domain.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.payment_method_domain.delete_payment_method_domain(
      domain_id: "pmd_b8237fa45c964d8a9ef27160cd42b8c5",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "payment_method_domain.delete_payment_method_domain.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/PaymentMethodDomain/pmd_b8237fa45c964d8a9ef27160cd42b8c5",
      query_params: nil,
      expected: 1
    )
  end

  def test_payment_method_domain_get_payment_method_domain_with_wiremock
    test_id = "payment_method_domain.get_payment_method_domain.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.payment_method_domain.get_payment_method_domain(
      domain_id: "pmd_b8237fa45c964d8a9ef27160cd42b8c5",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "payment_method_domain.get_payment_method_domain.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/PaymentMethodDomain/pmd_b8237fa45c964d8a9ef27160cd42b8c5",
      query_params: nil,
      expected: 1
    )
  end

  def test_payment_method_domain_list_payment_method_domains_with_wiremock
    test_id = "payment_method_domain.list_payment_method_domains.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.payment_method_domain.list_payment_method_domains(
      entity_id: 1147,
      entity_type: "paypoint",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "payment_method_domain.list_payment_method_domains.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/PaymentMethodDomain/list",
      query_params: nil,
      expected: 1
    )
  end

  def test_payment_method_domain_update_payment_method_domain_with_wiremock
    test_id = "payment_method_domain.update_payment_method_domain.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.payment_method_domain.update_payment_method_domain(
      domain_id: "pmd_b8237fa45c964d8a9ef27160cd42b8c5",
      apple_pay: {
        is_enabled: false
      },
      google_pay: {
        is_enabled: false
      },
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "payment_method_domain.update_payment_method_domain.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "PATCH",
      url_path: "/PaymentMethodDomain/pmd_b8237fa45c964d8a9ef27160cd42b8c5",
      query_params: nil,
      expected: 1
    )
  end

  def test_payment_method_domain_verify_payment_method_domain_with_wiremock
    test_id = "payment_method_domain.verify_payment_method_domain.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.payment_method_domain.verify_payment_method_domain(
      domain_id: "pmd_b8237fa45c964d8a9ef27160cd42b8c5",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "payment_method_domain.verify_payment_method_domain.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/PaymentMethodDomain/pmd_b8237fa45c964d8a9ef27160cd42b8c5/verify",
      query_params: nil,
      expected: 1
    )
  end
end
