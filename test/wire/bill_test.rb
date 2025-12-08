# frozen_string_literal: true

require "test_helper"
require "net/http"
require "json"
require "uri"
require "payabli"

class BillWireTest < Minitest::Test
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

  def test_bill_add_bill_with_wiremock
    test_id = "bill.add_bill.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.bill.add_bill(
      entry: "8cfec329267",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "bill.add_bill.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Bill/single/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_bill_delete_attached_from_bill_with_wiremock
    test_id = "bill.delete_attached_from_bill.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.bill.delete_attached_from_bill(
      filename: "0_Bill.pdf",
      id_bill: 285,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "bill.delete_attached_from_bill.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/Bill/attachedFileFromBill/285/0_Bill.pdf",
      query_params: nil,
      expected: 1
    )
  end

  def test_bill_delete_bill_with_wiremock
    test_id = "bill.delete_bill.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.bill.delete_bill(
      id_bill: 285,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "bill.delete_bill.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/Bill/285",
      query_params: nil,
      expected: 1
    )
  end

  def test_bill_edit_bill_with_wiremock
    test_id = "bill.edit_bill.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.bill.edit_bill(
      id_bill: 285,
      bill_date: "2025-07-01",
      net_amount: 3762.87,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "bill.edit_bill.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "PUT",
      url_path: "/Bill/285",
      query_params: nil,
      expected: 1
    )
  end

  def test_bill_get_attached_from_bill_with_wiremock
    test_id = "bill.get_attached_from_bill.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.bill.get_attached_from_bill(
      filename: "0_Bill.pdf",
      id_bill: 285,
      return_object: true,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "bill.get_attached_from_bill.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Bill/attachedFileFromBill/285/0_Bill.pdf",
      query_params: nil,
      expected: 1
    )
  end

  def test_bill_get_bill_with_wiremock
    test_id = "bill.get_bill.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.bill.get_bill(
      id_bill: 285,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "bill.get_bill.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Bill/285",
      query_params: nil,
      expected: 1
    )
  end

  def test_bill_list_bills_with_wiremock
    test_id = "bill.list_bills.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.bill.list_bills(
      entry: "8cfec329267",
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "bill.list_bills.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/bills/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_bill_list_bills_org_with_wiremock
    test_id = "bill.list_bills_org.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.bill.list_bills_org(
      org_id: 123,
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "bill.list_bills_org.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/bills/org/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_bill_modify_approval_bill_with_wiremock
    test_id = "bill.modify_approval_bill.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.bill.modify_approval_bill(
      id_bill: 285,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "bill.modify_approval_bill.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "PUT",
      url_path: "/Bill/approval/285",
      query_params: nil,
      expected: 1
    )
  end

  def test_bill_send_to_approval_bill_with_wiremock
    test_id = "bill.send_to_approval_bill.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.bill.send_to_approval_bill(
      id_bill: 285,
      idempotency_key: "6B29FC40-CA47-1067-B31D-00DD010662DA",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "bill.send_to_approval_bill.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Bill/approval/285",
      query_params: nil,
      expected: 1
    )
  end

  def test_bill_set_approved_bill_with_wiremock
    test_id = "bill.set_approved_bill.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.bill.set_approved_bill(
      approved: "true",
      id_bill: 285,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "bill.set_approved_bill.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Bill/approval/285/true",
      query_params: nil,
      expected: 1
    )
  end
end
