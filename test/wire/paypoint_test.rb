# frozen_string_literal: true

require_relative "wire_helper"
require "net/http"
require "json"
require "uri"
require "payabli"

class PaypointWireTest < Minitest::Test
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

  def test_paypoint_get_basic_entry_with_wiremock
    test_id = "paypoint.get_basic_entry.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.paypoint.get_basic_entry(
      entry: "8cfec329267",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "paypoint.get_basic_entry.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Paypoint/basic/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_paypoint_get_basic_entry_by_id_with_wiremock
    test_id = "paypoint.get_basic_entry_by_id.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.paypoint.get_basic_entry_by_id(
      id_paypoint: "198",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "paypoint.get_basic_entry_by_id.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Paypoint/basicById/198",
      query_params: nil,
      expected: 1
    )
  end

  def test_paypoint_get_entry_config_with_wiremock
    test_id = "paypoint.get_entry_config.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.paypoint.get_entry_config(
      entry: "8cfec329267",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "paypoint.get_entry_config.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Paypoint/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_paypoint_get_page_with_wiremock
    test_id = "paypoint.get_page.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.paypoint.get_page(
      entry: "8cfec329267",
      subdomain: "pay-your-fees-1",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "paypoint.get_page.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Paypoint/8cfec329267/pay-your-fees-1",
      query_params: nil,
      expected: 1
    )
  end

  def test_paypoint_remove_page_with_wiremock
    test_id = "paypoint.remove_page.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.paypoint.remove_page(
      entry: "8cfec329267",
      subdomain: "pay-your-fees-1",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "paypoint.remove_page.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/Paypoint/8cfec329267/pay-your-fees-1",
      query_params: nil,
      expected: 1
    )
  end

  def test_paypoint_save_logo_with_wiremock
    test_id = "paypoint.save_logo.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.paypoint.save_logo(
      entry: "8cfec329267",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "paypoint.save_logo.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "PUT",
      url_path: "/Paypoint/logo/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_paypoint_settings_page_with_wiremock
    test_id = "paypoint.settings_page.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.paypoint.settings_page(
      entry: "8cfec329267",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "paypoint.settings_page.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Paypoint/settings/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_paypoint_migrate_with_wiremock
    test_id = "paypoint.migrate.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.paypoint.migrate(
      entry_point: "473abc123def",
      new_parent_organization_id: 123,
      notification_request: {
        notification_url: "https://webhook-test.yoursie.com",
        web_header_parameters: [{
          key: "testheader",
          value: "1234567890"
        }]
      },
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "paypoint.migrate.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Paypoint/migrate",
      query_params: nil,
      expected: 1
    )
  end
end
