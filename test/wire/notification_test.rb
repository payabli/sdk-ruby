# frozen_string_literal: true

require "test_helper"
require "net/http"
require "json"
require "uri"
require "payabli"

class NotificationWireTest < Minitest::Test
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

  def test_notification_add_notification_with_wiremock
    test_id = "notification.add_notification.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.notification.add_notification(request_options: { base_url: WIREMOCK_BASE_URL,
                                                            additional_headers: {
                                                              "X-Test-Id" => "notification.add_notification.0"
                                                            } })

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Notification",
      query_params: nil,
      expected: 1
    )
  end

  def test_notification_delete_notification_with_wiremock
    test_id = "notification.delete_notification.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.notification.delete_notification(
      n_id: "1717",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "notification.delete_notification.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/Notification/1717",
      query_params: nil,
      expected: 1
    )
  end

  def test_notification_get_notification_with_wiremock
    test_id = "notification.get_notification.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.notification.get_notification(
      n_id: "1717",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "notification.get_notification.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Notification/1717",
      query_params: nil,
      expected: 1
    )
  end

  def test_notification_update_notification_with_wiremock
    test_id = "notification.update_notification.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.notification.update_notification(
      n_id: "1717",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "notification.update_notification.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "PUT",
      url_path: "/Notification/1717",
      query_params: nil,
      expected: 1
    )
  end

  def test_notification_get_report_file_with_wiremock
    test_id = "notification.get_report_file.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.notification.get_report_file(
      id: 1_000_000,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "notification.get_report_file.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Export/notificationReport/1000000",
      query_params: nil,
      expected: 1
    )
  end
end
