# frozen_string_literal: true

require "test_helper"
require "net/http"
require "json"
require "uri"
require "payabli"

class CloudWireTest < Minitest::Test
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

  def test_cloud_add_device_with_wiremock
    test_id = "cloud.add_device.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.cloud.add_device(
      entry: "8cfec329267",
      registration_code: "YS7DS5",
      description: "Front Desk POS",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "cloud.add_device.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Cloud/register/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_cloud_history_device_with_wiremock
    test_id = "cloud.history_device.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.cloud.history_device(
      device_id: "WXGDWB",
      entry: "8cfec329267",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "cloud.history_device.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Cloud/history/8cfec329267/WXGDWB",
      query_params: nil,
      expected: 1
    )
  end

  def test_cloud_list_device_with_wiremock
    test_id = "cloud.list_device.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.cloud.list_device(
      entry: "8cfec329267",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "cloud.list_device.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Cloud/list/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_cloud_remove_device_with_wiremock
    test_id = "cloud.remove_device.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.cloud.remove_device(
      device_id: "6c361c7d-674c-44cc-b790-382b75d1xxx",
      entry: "8cfec329267",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "cloud.remove_device.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/Cloud/register/8cfec329267/6c361c7d-674c-44cc-b790-382b75d1xxx",
      query_params: nil,
      expected: 1
    )
  end
end
