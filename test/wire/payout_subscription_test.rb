# frozen_string_literal: true

require_relative "wiremock_test_case"

class PayoutSubscriptionWireTest < WireMockTestCase
  def setup
    super

    @client = Payabli::Client.new(
      client_id: "test-client-id",
      client_secret: "test-client-secret",
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_payout_subscription_create_payout_subscription_with_wiremock
    test_id = "payout_subscription.create_payout_subscription.0"

    @client.payout_subscription.create_payout_subscription(
      entry_point: "8cfec329267",
      payment_method: {
        method_: "ach",
        ach_holder: "Herman Coatings",
        ach_routing: "021000021",
        ach_account: "3453445666",
        ach_account_type: "checking"
      },
      payment_details: {
        total_amount: 500,
        service_fee: 0,
        currency: "USD"
      },
      vendor_data: {
        vendor_id: 456
      },
      bill_data: [{
        invoice_number: "INV-2345",
        net_amount: "500",
        invoice_date: "2025-08-01",
        due_date: "2025-08-15"
      }],
      schedule_details: {
        start_date: "09/01/2027",
        end_date: "09/01/2026",
        frequency: "monthly"
      },
      request_options: {
        additional_headers: {
          "X-Test-Id" => "payout_subscription.create_payout_subscription.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/PayoutSubscription",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/PayoutSubscription",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_payout_subscription_get_payout_subscription_with_wiremock
    test_id = "payout_subscription.get_payout_subscription.0"

    @client.payout_subscription.get_payout_subscription(
      id: 42,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "payout_subscription.get_payout_subscription.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/PayoutSubscription/42",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/PayoutSubscription/42",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_payout_subscription_update_payout_subscription_with_wiremock
    test_id = "payout_subscription.update_payout_subscription.0"

    @client.payout_subscription.update_payout_subscription(
      id: 42,
      set_pause: true,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "payout_subscription.update_payout_subscription.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "PUT",
      url_path: "/PayoutSubscription/42",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "PUT",
      url_path: "/PayoutSubscription/42",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_payout_subscription_delete_payout_subscription_with_wiremock
    test_id = "payout_subscription.delete_payout_subscription.0"

    @client.payout_subscription.delete_payout_subscription(
      id: 42,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "payout_subscription.delete_payout_subscription.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/PayoutSubscription/42",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "DELETE",
      url_path: "/PayoutSubscription/42",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end
end
