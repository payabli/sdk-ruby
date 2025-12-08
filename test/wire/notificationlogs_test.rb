# frozen_string_literal: true

require "test_helper"
require "net/http"
require "json"
require "uri"
require "payabli"

class NotificationlogsWireTest < Minitest::Test
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

  def test_notificationlogs_search_notification_logs_with_wiremock
    test_id = "notificationlogs.search_notification_logs.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.notificationlogs.search_notification_logs(
      page_size: 20,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "notificationlogs.search_notification_logs.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/notificationlogs",
      query_params: nil,
      expected: 1
    )
  end

  def test_notificationlogs_get_notification_log_with_wiremock
    test_id = "notificationlogs.get_notification_log.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.notificationlogs.get_notification_log(
      uuid: "550e8400-e29b-41d4-a716-446655440000",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "notificationlogs.get_notification_log.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/notificationlogs/550e8400-e29b-41d4-a716-446655440000",
      query_params: nil,
      expected: 1
    )
  end

  def test_notificationlogs_retry_notification_log_with_wiremock
    test_id = "notificationlogs.retry_notification_log.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.notificationlogs.retry_notification_log(
      uuid: "550e8400-e29b-41d4-a716-446655440000",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "notificationlogs.retry_notification_log.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/notificationlogs/550e8400-e29b-41d4-a716-446655440000/retry",
      query_params: nil,
      expected: 1
    )
  end

  def test_notificationlogs_bulk_retry_notification_logs_with_wiremock
    test_id = "notificationlogs.bulk_retry_notification_logs.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.notificationlogs.bulk_retry_notification_logs(request_options: { base_url: WIREMOCK_BASE_URL,
                                                                            additional_headers: {
                                                                              "X-Test-Id" => "notificationlogs.bulk_retry_notification_logs.0"
                                                                            } })

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/notificationlogs/retry",
      query_params: nil,
      expected: 1
    )
  end
end
