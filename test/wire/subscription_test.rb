# frozen_string_literal: true

require_relative "wiremock_test_case"

class SubscriptionWireTest < WireMockTestCase
  def setup
    super

    @client = Payabli::Client.new(
      client_id: "test-client-id",
      client_secret: "test-client-secret",
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_subscription_get_subscription_with_wiremock
    test_id = "subscription.get_subscription.0"

    @client.subscription.get_subscription(
      sub_id: 231,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "subscription.get_subscription.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Subscription/231",
      query_params: nil,
      expected: 1
    )
  end

  def test_subscription_update_subscription_with_wiremock
    test_id = "subscription.update_subscription.0"

    @client.subscription.update_subscription(
      sub_id: 231,
      set_pause: true,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "subscription.update_subscription.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "PUT",
      url_path: "/Subscription/231",
      query_params: nil,
      expected: 1
    )
  end

  def test_subscription_remove_subscription_with_wiremock
    test_id = "subscription.remove_subscription.0"

    @client.subscription.remove_subscription(
      sub_id: 231,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "subscription.remove_subscription.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/Subscription/231",
      query_params: nil,
      expected: 1
    )
  end

  def test_subscription_new_subscription_with_wiremock
    test_id = "subscription.new_subscription.0"

    @client.subscription.new_subscription(
      customer_data: {
        customer_id: 4440
      },
      entry_point: "8cfec329267",
      payment_details: {
        service_fee: 0,
        total_amount: 100
      },
      payment_method: {
        cardcvv: "123",
        cardexp: "12/29",
        card_holder: "John Cassian",
        cardnumber: "4111111111111111",
        cardzip: "37615",
        initiator: "payor",
        method_: "card"
      },
      schedule_details: {
        end_date: "2025-03-20",
        frequency: "weekly",
        plan_id: 1,
        start_date: "2024-09-20"
      },
      request_options: {
        additional_headers: {
          "X-Test-Id" => "subscription.new_subscription.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Subscription/add",
      query_params: nil,
      expected: 1
    )
  end
end
