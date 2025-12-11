# frozen_string_literal: true

require_relative "wire_helper"
require "net/http"
require "json"
require "uri"
require "payabli"

class WalletWireTest < Minitest::Test
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

  def test_wallet_configure_apple_pay_organization_with_wiremock
    test_id = "wallet.configure_apple_pay_organization.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.wallet.configure_apple_pay_organization(
      cascade: true,
      is_enabled: true,
      org_id: 901,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "wallet.configure_apple_pay_organization.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Wallet/applepay/configure-organization",
      query_params: nil,
      expected: 1
    )
  end

  def test_wallet_configure_apple_pay_paypoint_with_wiremock
    test_id = "wallet.configure_apple_pay_paypoint.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.wallet.configure_apple_pay_paypoint(
      entry: "8cfec329267",
      is_enabled: true,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "wallet.configure_apple_pay_paypoint.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Wallet/applepay/configure-paypoint",
      query_params: nil,
      expected: 1
    )
  end

  def test_wallet_configure_google_pay_organization_with_wiremock
    test_id = "wallet.configure_google_pay_organization.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.wallet.configure_google_pay_organization(
      cascade: true,
      is_enabled: true,
      org_id: 901,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "wallet.configure_google_pay_organization.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Wallet/googlepay/configure-organization",
      query_params: nil,
      expected: 1
    )
  end

  def test_wallet_configure_google_pay_paypoint_with_wiremock
    test_id = "wallet.configure_google_pay_paypoint.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.wallet.configure_google_pay_paypoint(
      entry: "8cfec329267",
      is_enabled: true,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "wallet.configure_google_pay_paypoint.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Wallet/googlepay/configure-paypoint",
      query_params: nil,
      expected: 1
    )
  end
end
