# frozen_string_literal: true

require "test_helper"
require "net/http"
require "json"
require "uri"
require "payabli"

class SubscriptionWireTest < Minitest::Test
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

  def test_subscription_get_subscription_with_wiremock
    test_id = "subscription.get_subscription.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.subscription.get_subscription(
      sub_id: 263,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "subscription.get_subscription.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Subscription/263",
      query_params: nil,
      expected: 1
    )
  end

  def test_subscription_new_subscription_with_wiremock
    test_id = "subscription.new_subscription.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.subscription.new_subscription(request_options: { base_url: WIREMOCK_BASE_URL,
                                                            additional_headers: {
                                                              "X-Test-Id" => "subscription.new_subscription.0"
                                                            } })

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Subscription/add",
      query_params: nil,
      expected: 1
    )
  end

  def test_subscription_remove_subscription_with_wiremock
    test_id = "subscription.remove_subscription.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.subscription.remove_subscription(
      sub_id: 396,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "subscription.remove_subscription.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/Subscription/396",
      query_params: nil,
      expected: 1
    )
  end

  def test_subscription_update_subscription_with_wiremock
    test_id = "subscription.update_subscription.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.subscription.update_subscription(
      sub_id: 231,
      set_pause: true,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "subscription.update_subscription.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "PUT",
      url_path: "/Subscription/231",
      query_params: nil,
      expected: 1
    )
  end
end
