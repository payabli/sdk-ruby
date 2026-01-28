# frozen_string_literal: true

require_relative "wiremock_test_case"

class QueryWireTest < WireMockTestCase
  def setup
    super

    @client = Payabli::Client.new(
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_query_list_batch_details_with_wiremock
    test_id = "query.list_batch_details.0"

    @client.query.list_batch_details(
      entry: "8cfec329267",
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "query.list_batch_details.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/batchDetails/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_query_list_batch_details_org_with_wiremock
    test_id = "query.list_batch_details_org.0"

    @client.query.list_batch_details_org(
      org_id: 123,
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "query.list_batch_details_org.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/batchDetails/org/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_query_list_batches_with_wiremock
    test_id = "query.list_batches.0"

    @client.query.list_batches(
      entry: "8cfec329267",
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "query.list_batches.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/batches/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_query_list_batches_org_with_wiremock
    test_id = "query.list_batches_org.0"

    @client.query.list_batches_org(
      org_id: 123,
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "query.list_batches_org.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/batches/org/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_query_list_batches_out_with_wiremock
    test_id = "query.list_batches_out.0"

    @client.query.list_batches_out(
      entry: "8cfec329267",
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "query.list_batches_out.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/batchesOut/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_query_list_batches_out_org_with_wiremock
    test_id = "query.list_batches_out_org.0"

    @client.query.list_batches_out_org(
      org_id: 123,
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "query.list_batches_out_org.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/batchesOut/org/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_query_list_chargebacks_with_wiremock
    test_id = "query.list_chargebacks.0"

    @client.query.list_chargebacks(
      entry: "8cfec329267",
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "query.list_chargebacks.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/chargebacks/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_query_list_chargebacks_org_with_wiremock
    test_id = "query.list_chargebacks_org.0"

    @client.query.list_chargebacks_org(
      org_id: 123,
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "query.list_chargebacks_org.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/chargebacks/org/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_query_list_customers_with_wiremock
    test_id = "query.list_customers.0"

    @client.query.list_customers(
      entry: "8cfec329267",
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "query.list_customers.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/customers/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_query_list_customers_org_with_wiremock
    test_id = "query.list_customers_org.0"

    @client.query.list_customers_org(
      org_id: 123,
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "query.list_customers_org.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/customers/org/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_query_list_notification_reports_with_wiremock
    test_id = "query.list_notification_reports.0"

    @client.query.list_notification_reports(
      entry: "8cfec329267",
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "query.list_notification_reports.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/notificationReports/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_query_list_notification_reports_org_with_wiremock
    test_id = "query.list_notification_reports_org.0"

    @client.query.list_notification_reports_org(
      org_id: 123,
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "query.list_notification_reports_org.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/notificationReports/org/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_query_list_notifications_with_wiremock
    test_id = "query.list_notifications.0"

    @client.query.list_notifications(
      entry: "8cfec329267",
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "query.list_notifications.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/notifications/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_query_list_notifications_org_with_wiremock
    test_id = "query.list_notifications_org.0"

    @client.query.list_notifications_org(
      org_id: 123,
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "query.list_notifications_org.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/notifications/org/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_query_list_organizations_with_wiremock
    test_id = "query.list_organizations.0"

    @client.query.list_organizations(
      org_id: 123,
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "query.list_organizations.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/organizations/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_query_list_payout_with_wiremock
    test_id = "query.list_payout.0"

    @client.query.list_payout(
      entry: "8cfec329267",
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "query.list_payout.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/payouts/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_query_list_payout_org_with_wiremock
    test_id = "query.list_payout_org.0"

    @client.query.list_payout_org(
      org_id: 123,
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "query.list_payout_org.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/payouts/org/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_query_list_paypoints_with_wiremock
    test_id = "query.list_paypoints.0"

    @client.query.list_paypoints(
      org_id: 123,
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "query.list_paypoints.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/paypoints/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_query_list_settlements_with_wiremock
    test_id = "query.list_settlements.0"

    @client.query.list_settlements(
      entry: "8cfec329267",
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "query.list_settlements.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/settlements/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_query_list_settlements_org_with_wiremock
    test_id = "query.list_settlements_org.0"

    @client.query.list_settlements_org(
      org_id: 123,
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "query.list_settlements_org.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/settlements/org/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_query_list_subscriptions_with_wiremock
    test_id = "query.list_subscriptions.0"

    @client.query.list_subscriptions(
      entry: "8cfec329267",
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "query.list_subscriptions.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/subscriptions/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_query_list_subscriptions_org_with_wiremock
    test_id = "query.list_subscriptions_org.0"

    @client.query.list_subscriptions_org(
      org_id: 123,
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "query.list_subscriptions_org.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/subscriptions/org/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_query_list_transactions_with_wiremock
    test_id = "query.list_transactions.0"

    @client.query.list_transactions(
      entry: "8cfec329267",
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "query.list_transactions.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/transactions/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_query_list_transactions_org_with_wiremock
    test_id = "query.list_transactions_org.0"

    @client.query.list_transactions_org(
      org_id: 123,
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "query.list_transactions_org.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/transactions/org/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_query_list_transfer_details_with_wiremock
    test_id = "query.list_transfer_details.0"

    @client.query.list_transfer_details(
      entry: "47862acd",
      transfer_id: 123_456,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "query.list_transfer_details.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/transferDetails/47862acd/123456",
      query_params: nil,
      expected: 1
    )
  end

  def test_query_list_transfers_with_wiremock
    test_id = "query.list_transfers.0"

    @client.query.list_transfers(
      entry: "47862acd",
      from_record: 0,
      limit_record: 20,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "query.list_transfers.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/transfers/47862acd",
      query_params: nil,
      expected: 1
    )
  end

  def test_query_list_transfers_org_with_wiremock
    test_id = "query.list_transfers_org.0"

    @client.query.list_transfers_org(
      org_id: 123,
      from_record: 0,
      limit_record: 20,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "query.list_transfers_org.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/transfers/org/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_query_list_transfers_out_org_with_wiremock
    test_id = "query.list_transfers_out_org.0"

    @client.query.list_transfers_out_org(
      org_id: 77,
      from_record: 0,
      limit_record: 20,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "query.list_transfers_out_org.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/transfersOut/org/77",
      query_params: nil,
      expected: 1
    )
  end

  def test_query_list_transfers_out_paypoint_with_wiremock
    test_id = "query.list_transfers_out_paypoint.0"

    @client.query.list_transfers_out_paypoint(
      entry: "47cade237",
      from_record: 0,
      limit_record: 20,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "query.list_transfers_out_paypoint.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/transfersOut/47cade237",
      query_params: nil,
      expected: 1
    )
  end

  def test_query_list_transfer_details_out_with_wiremock
    test_id = "query.list_transfer_details_out.0"

    @client.query.list_transfer_details_out(
      entry: "47ace2b25",
      transfer_id: 4521,
      from_record: 0,
      limit_record: 20,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "query.list_transfer_details_out.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/transferDetailsOut/47ace2b25/4521",
      query_params: nil,
      expected: 1
    )
  end

  def test_query_list_users_org_with_wiremock
    test_id = "query.list_users_org.0"

    @client.query.list_users_org(
      org_id: 123,
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "query.list_users_org.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/users/org/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_query_list_users_paypoint_with_wiremock
    test_id = "query.list_users_paypoint.0"

    @client.query.list_users_paypoint(
      entry: "8cfec329267",
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "query.list_users_paypoint.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/users/point/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_query_list_vendors_with_wiremock
    test_id = "query.list_vendors.0"

    @client.query.list_vendors(
      entry: "8cfec329267",
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "query.list_vendors.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/vendors/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_query_list_vendors_org_with_wiremock
    test_id = "query.list_vendors_org.0"

    @client.query.list_vendors_org(
      org_id: 123,
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "query.list_vendors_org.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/vendors/org/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_query_list_vcards_with_wiremock
    test_id = "query.list_vcards.0"

    @client.query.list_vcards(
      entry: "8cfec329267",
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "query.list_vcards.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/vcards/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_query_list_vcards_org_with_wiremock
    test_id = "query.list_vcards_org.0"

    @client.query.list_vcards_org(
      org_id: 123,
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "query.list_vcards_org.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/vcards/org/123",
      query_params: nil,
      expected: 1
    )
  end
end
