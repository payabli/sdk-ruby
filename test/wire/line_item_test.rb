# frozen_string_literal: true

require "test_helper"
require "net/http"
require "json"
require "uri"
require "payabli"

class LineItemWireTest < Minitest::Test
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

  def test_line_item_add_item_with_wiremock
    test_id = "line_item.add_item.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.line_item.add_item(
      entry: "47cae3d74",
      item_commodity_code: "010",
      item_cost: 12.45,
      item_description: "Deposit for materials",
      item_mode: 0,
      item_product_code: "M-DEPOSIT",
      item_product_name: "Materials deposit",
      item_qty: 1,
      item_unit_of_measure: "SqFt",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "line_item.add_item.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/LineItem/47cae3d74",
      query_params: nil,
      expected: 1
    )
  end

  def test_line_item_delete_item_with_wiremock
    test_id = "line_item.delete_item.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.line_item.delete_item(
      line_item_id: 700,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "line_item.delete_item.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/LineItem/700",
      query_params: nil,
      expected: 1
    )
  end

  def test_line_item_get_item_with_wiremock
    test_id = "line_item.get_item.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.line_item.get_item(
      line_item_id: 700,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "line_item.get_item.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/LineItem/700",
      query_params: nil,
      expected: 1
    )
  end

  def test_line_item_list_line_items_with_wiremock
    test_id = "line_item.list_line_items.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.line_item.list_line_items(
      entry: "8cfec329267",
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "line_item.list_line_items.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/lineitems/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_line_item_update_item_with_wiremock
    test_id = "line_item.update_item.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.line_item.update_item(
      line_item_id: 700,
      item_cost: 12.45,
      item_qty: 1,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "line_item.update_item.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "PUT",
      url_path: "/LineItem/700",
      query_params: nil,
      expected: 1
    )
  end
end
