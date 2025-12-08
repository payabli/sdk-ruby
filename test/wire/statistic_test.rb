# frozen_string_literal: true

require "test_helper"
require "net/http"
require "json"
require "uri"
require "payabli"

class StatisticWireTest < Minitest::Test
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

  def test_statistic_basic_stats_with_wiremock
    test_id = "statistic.basic_stats.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.statistic.basic_stats(
      entry_id: 1_000_000,
      freq: "m",
      level: 1,
      mode: "ytd",
      end_date: "2025-11-01",
      start_date: "2025-11-30",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "statistic.basic_stats.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Statistic/basic/ytd/m/1/1000000",
      query_params: nil,
      expected: 1
    )
  end

  def test_statistic_customer_basic_stats_with_wiremock
    test_id = "statistic.customer_basic_stats.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.statistic.customer_basic_stats(
      customer_id: 998,
      freq: "m",
      mode: "ytd",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "statistic.customer_basic_stats.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Statistic/customerbasic/ytd/m/998",
      query_params: nil,
      expected: 1
    )
  end

  def test_statistic_sub_stats_with_wiremock
    test_id = "statistic.sub_stats.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.statistic.sub_stats(
      entry_id: 1_000_000,
      interval: "30",
      level: 1,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "statistic.sub_stats.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Statistic/subscriptions/30/1/1000000",
      query_params: nil,
      expected: 1
    )
  end

  def test_statistic_vendor_basic_stats_with_wiremock
    test_id = "statistic.vendor_basic_stats.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.statistic.vendor_basic_stats(
      freq: "m",
      id_vendor: 1,
      mode: "ytd",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "statistic.vendor_basic_stats.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Statistic/vendorbasic/ytd/m/1",
      query_params: nil,
      expected: 1
    )
  end
end
