# frozen_string_literal: true

require "test_helper"
require "net/http"
require "json"
require "uri"
require "payabli"

class ExportWireTest < Minitest::Test
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

  def test_export_export_applications_with_wiremock
    test_id = "export.export_applications.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.export.export_applications(
      org_id: 123,
      columns_export: "BatchDate:Batch_Date,PaypointName:Legal_name",
      from_record: 251,
      limit_record: 1000,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "export.export_applications.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Export/boarding/csv/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_export_export_batch_details_with_wiremock
    test_id = "export.export_batch_details.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.export.export_batch_details(
      entry: "8cfec329267",
      columns_export: "BatchDate:Batch_Date,PaypointName:Legal_name",
      from_record: 251,
      limit_record: 1000,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "export.export_batch_details.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Export/batchDetails/csv/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_export_export_batch_details_org_with_wiremock
    test_id = "export.export_batch_details_org.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.export.export_batch_details_org(
      org_id: 123,
      columns_export: "BatchDate:Batch_Date,PaypointName:Legal_name",
      from_record: 251,
      limit_record: 1000,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "export.export_batch_details_org.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Export/batchDetails/csv/org/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_export_export_batches_with_wiremock
    test_id = "export.export_batches.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.export.export_batches(
      entry: "8cfec329267",
      columns_export: "BatchDate:Batch_Date,PaypointName:Legal_name",
      from_record: 251,
      limit_record: 1000,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "export.export_batches.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Export/batches/csv/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_export_export_batches_org_with_wiremock
    test_id = "export.export_batches_org.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.export.export_batches_org(
      org_id: 123,
      columns_export: "BatchDate:Batch_Date,PaypointName:Legal_name",
      from_record: 251,
      limit_record: 1000,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "export.export_batches_org.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Export/batches/csv/org/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_export_export_batches_out_with_wiremock
    test_id = "export.export_batches_out.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.export.export_batches_out(
      entry: "8cfec329267",
      columns_export: "BatchDate:Batch_Date,PaypointName:Legal_name",
      from_record: 251,
      limit_record: 1000,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "export.export_batches_out.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Export/batchesOut/csv/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_export_export_batches_out_org_with_wiremock
    test_id = "export.export_batches_out_org.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.export.export_batches_out_org(
      org_id: 123,
      columns_export: "BatchDate:Batch_Date,PaypointName:Legal_name",
      from_record: 251,
      limit_record: 1000,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "export.export_batches_out_org.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Export/batchesOut/csv/org/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_export_export_bills_with_wiremock
    test_id = "export.export_bills.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.export.export_bills(
      entry: "8cfec329267",
      columns_export: "BatchDate:Batch_Date,PaypointName:Legal_name",
      from_record: 251,
      limit_record: 1000,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "export.export_bills.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Export/bills/csv/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_export_export_bills_org_with_wiremock
    test_id = "export.export_bills_org.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.export.export_bills_org(
      org_id: 123,
      columns_export: "BatchDate:Batch_Date,PaypointName:Legal_name",
      from_record: 251,
      limit_record: 1000,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "export.export_bills_org.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Export/bills/csv/org/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_export_export_chargebacks_with_wiremock
    test_id = "export.export_chargebacks.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.export.export_chargebacks(
      entry: "8cfec329267",
      columns_export: "BatchDate:Batch_Date,PaypointName:Legal_name",
      from_record: 251,
      limit_record: 1000,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "export.export_chargebacks.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Export/chargebacks/csv/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_export_export_chargebacks_org_with_wiremock
    test_id = "export.export_chargebacks_org.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.export.export_chargebacks_org(
      org_id: 123,
      columns_export: "BatchDate:Batch_Date,PaypointName:Legal_name",
      from_record: 251,
      limit_record: 1000,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "export.export_chargebacks_org.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Export/chargebacks/csv/org/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_export_export_customers_with_wiremock
    test_id = "export.export_customers.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.export.export_customers(
      entry: "8cfec329267",
      columns_export: "BatchDate:Batch_Date,PaypointName:Legal_name",
      from_record: 251,
      limit_record: 1000,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "export.export_customers.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Export/customers/csv/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_export_export_customers_org_with_wiremock
    test_id = "export.export_customers_org.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.export.export_customers_org(
      org_id: 123,
      columns_export: "BatchDate:Batch_Date,PaypointName:Legal_name",
      from_record: 251,
      limit_record: 1000,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "export.export_customers_org.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Export/customers/csv/org/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_export_export_invoices_with_wiremock
    test_id = "export.export_invoices.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.export.export_invoices(
      entry: "8cfec329267",
      columns_export: "BatchDate:Batch_Date,PaypointName:Legal_name",
      from_record: 251,
      limit_record: 1000,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "export.export_invoices.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Export/invoices/csv/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_export_export_invoices_org_with_wiremock
    test_id = "export.export_invoices_org.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.export.export_invoices_org(
      org_id: 123,
      columns_export: "BatchDate:Batch_Date,PaypointName:Legal_name",
      from_record: 251,
      limit_record: 1000,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "export.export_invoices_org.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Export/invoices/csv/org/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_export_export_organizations_with_wiremock
    test_id = "export.export_organizations.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.export.export_organizations(
      org_id: 123,
      columns_export: "BatchDate:Batch_Date,PaypointName:Legal_name",
      from_record: 251,
      limit_record: 1000,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "export.export_organizations.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Export/organizations/csv/org/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_export_export_payout_with_wiremock
    test_id = "export.export_payout.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.export.export_payout(
      entry: "8cfec329267",
      columns_export: "BatchDate:Batch_Date,PaypointName:Legal_name",
      from_record: 251,
      limit_record: 1000,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "export.export_payout.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Export/payouts/csv/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_export_export_payout_org_with_wiremock
    test_id = "export.export_payout_org.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.export.export_payout_org(
      org_id: 123,
      columns_export: "BatchDate:Batch_Date,PaypointName:Legal_name",
      from_record: 251,
      limit_record: 1000,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "export.export_payout_org.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Export/payouts/csv/org/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_export_export_paypoints_with_wiremock
    test_id = "export.export_paypoints.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.export.export_paypoints(
      org_id: 123,
      columns_export: "BatchDate:Batch_Date,PaypointName:Legal_name",
      from_record: 251,
      limit_record: 1000,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "export.export_paypoints.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Export/paypoints/csv/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_export_export_settlements_with_wiremock
    test_id = "export.export_settlements.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.export.export_settlements(
      entry: "8cfec329267",
      columns_export: "BatchDate:Batch_Date,PaypointName:Legal_name",
      from_record: 251,
      limit_record: 1000,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "export.export_settlements.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Export/settlements/csv/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_export_export_settlements_org_with_wiremock
    test_id = "export.export_settlements_org.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.export.export_settlements_org(
      org_id: 123,
      columns_export: "BatchDate:Batch_Date,PaypointName:Legal_name",
      from_record: 251,
      limit_record: 1000,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "export.export_settlements_org.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Export/settlements/csv/org/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_export_export_subscriptions_with_wiremock
    test_id = "export.export_subscriptions.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.export.export_subscriptions(
      entry: "8cfec329267",
      columns_export: "BatchDate:Batch_Date,PaypointName:Legal_name",
      from_record: 251,
      limit_record: 1000,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "export.export_subscriptions.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Export/subscriptions/csv/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_export_export_subscriptions_org_with_wiremock
    test_id = "export.export_subscriptions_org.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.export.export_subscriptions_org(
      org_id: 123,
      columns_export: "BatchDate:Batch_Date,PaypointName:Legal_name",
      from_record: 251,
      limit_record: 1000,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "export.export_subscriptions_org.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Export/subscriptions/csv/org/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_export_export_transactions_with_wiremock
    test_id = "export.export_transactions.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.export.export_transactions(
      entry: "8cfec329267",
      columns_export: "BatchDate:Batch_Date,PaypointName:Legal_name",
      from_record: 251,
      limit_record: 1000,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "export.export_transactions.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Export/transactions/csv/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_export_export_transactions_org_with_wiremock
    test_id = "export.export_transactions_org.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.export.export_transactions_org(
      org_id: 123,
      columns_export: "BatchDate:Batch_Date,PaypointName:Legal_name",
      from_record: 251,
      limit_record: 1000,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "export.export_transactions_org.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Export/transactions/csv/org/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_export_export_transfer_details_with_wiremock
    test_id = "export.export_transfer_details.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.export.export_transfer_details(
      entry: "8cfec329267",
      transfer_id: 1_000_000,
      columns_export: "BatchDate:Batch_Date,PaypointName:Legal_name",
      from_record: 251,
      limit_record: 1000,
      sort_by: "desc(field_name)",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "export.export_transfer_details.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Export/transferDetails/csv/8cfec329267/1000000",
      query_params: nil,
      expected: 1
    )
  end

  def test_export_export_transfers_with_wiremock
    test_id = "export.export_transfers.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.export.export_transfers(
      entry: "8cfec329267",
      columns_export: "BatchDate:Batch_Date,PaypointName:Legal_name",
      from_record: 251,
      limit_record: 1000,
      sort_by: "desc(field_name)",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "export.export_transfers.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Export/transfers/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_export_export_vendors_with_wiremock
    test_id = "export.export_vendors.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.export.export_vendors(
      entry: "8cfec329267",
      columns_export: "BatchDate:Batch_Date,PaypointName:Legal_name",
      from_record: 251,
      limit_record: 1000,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "export.export_vendors.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Export/vendors/csv/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_export_export_vendors_org_with_wiremock
    test_id = "export.export_vendors_org.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.export.export_vendors_org(
      org_id: 123,
      columns_export: "BatchDate:Batch_Date,PaypointName:Legal_name",
      from_record: 251,
      limit_record: 1000,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "export.export_vendors_org.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Export/vendors/csv/org/123",
      query_params: nil,
      expected: 1
    )
  end
end
