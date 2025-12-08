# frozen_string_literal: true

require "test_helper"
require "net/http"
require "json"
require "uri"
require "payabli"

class PaymentLinkWireTest < Minitest::Test
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

  def test_payment_link_add_pay_link_from_invoice_with_wiremock
    test_id = "payment_link.add_pay_link_from_invoice.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.payment_link.add_pay_link_from_invoice(
      id_invoice: 23_548_884,
      mail_2: "jo@example.com; ceo@example.com",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "payment_link.add_pay_link_from_invoice.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/PaymentLink/23548884",
      query_params: nil,
      expected: 1
    )
  end

  def test_payment_link_add_pay_link_from_bill_with_wiremock
    test_id = "payment_link.add_pay_link_from_bill.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.payment_link.add_pay_link_from_bill(
      bill_id: 23_548_884,
      mail_2: "jo@example.com; ceo@example.com",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "payment_link.add_pay_link_from_bill.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/PaymentLink/bill/23548884",
      query_params: nil,
      expected: 1
    )
  end

  def test_payment_link_delete_pay_link_from_id_with_wiremock
    test_id = "payment_link.delete_pay_link_from_id.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.payment_link.delete_pay_link_from_id(
      pay_link_id: "payLinkId",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "payment_link.delete_pay_link_from_id.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/PaymentLink/payLinkId",
      query_params: nil,
      expected: 1
    )
  end

  def test_payment_link_get_pay_link_from_id_with_wiremock
    test_id = "payment_link.get_pay_link_from_id.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.payment_link.get_pay_link_from_id(
      paylink_id: "paylinkId",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "payment_link.get_pay_link_from_id.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/PaymentLink/load/paylinkId",
      query_params: nil,
      expected: 1
    )
  end

  def test_payment_link_push_pay_link_from_id_with_wiremock
    test_id = "payment_link.push_pay_link_from_id.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.payment_link.push_pay_link_from_id(
      pay_link_id: "payLinkId",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "payment_link.push_pay_link_from_id.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/PaymentLink/push/payLinkId",
      query_params: nil,
      expected: 1
    )
  end

  def test_payment_link_refresh_pay_link_from_id_with_wiremock
    test_id = "payment_link.refresh_pay_link_from_id.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.payment_link.refresh_pay_link_from_id(
      pay_link_id: "payLinkId",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "payment_link.refresh_pay_link_from_id.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/PaymentLink/refresh/payLinkId",
      query_params: nil,
      expected: 1
    )
  end

  def test_payment_link_send_pay_link_from_id_with_wiremock
    test_id = "payment_link.send_pay_link_from_id.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.payment_link.send_pay_link_from_id(
      pay_link_id: "payLinkId",
      mail_2: "jo@example.com; ceo@example.com",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "payment_link.send_pay_link_from_id.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/PaymentLink/send/payLinkId",
      query_params: nil,
      expected: 1
    )
  end

  def test_payment_link_update_pay_link_from_id_with_wiremock
    test_id = "payment_link.update_pay_link_from_id.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.payment_link.update_pay_link_from_id(
      pay_link_id: "332-c277b704-1301",
      notes: {
        enabled: true,
        header: "Additional Notes",
        order: 0,
        placeholder: "Enter any additional notes here",
        value: ""
      },
      payment_button: {
        enabled: true,
        label: "Pay Now",
        order: 0
      },
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "payment_link.update_pay_link_from_id.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "PUT",
      url_path: "/PaymentLink/update/332-c277b704-1301",
      query_params: nil,
      expected: 1
    )
  end

  def test_payment_link_add_pay_link_from_bill_lot_number_with_wiremock
    test_id = "payment_link.add_pay_link_from_bill_lot_number.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.payment_link.add_pay_link_from_bill_lot_number(
      lot_number: "LOT-2024-001",
      entry_point: "billing",
      vendor_number: "VENDOR-123",
      mail_2: "customer@example.com; billing@example.com",
      amount_fixed: "true",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "payment_link.add_pay_link_from_bill_lot_number.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/PaymentLink/bill/lotNumber/LOT-2024-001",
      query_params: { "entryPoint" => "billing", "vendorNumber" => "VENDOR-123" },
      expected: 1
    )
  end
end
