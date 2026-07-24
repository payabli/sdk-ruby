# frozen_string_literal: true

require_relative "wiremock_test_case"

class GhostCardWireTest < WireMockTestCase
  def setup
    super

    @client = Payabli::Client.new(
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_ghost_card_create_ghost_card_with_wiremock
    test_id = "ghost_card.create_ghost_card.0"

    @client.ghost_card.create_ghost_card(
      entry: "8cfec329267",
      vendor_id: 456,
      expense_limit: 500,
      amount: 500,
      max_number_of_uses: 3,
      exact_amount: false,
      expense_limit_period: "monthly",
      billing_cycle: "monthly",
      billing_cycle_day: "1",
      daily_transaction_count: 5,
      daily_amount_limit: 200,
      transaction_amount_limit: 100,
      mcc: "5411",
      tcc: "R",
      misc_1: "PO-98765",
      misc_2: "Dept-Finance",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "ghost_card.create_ghost_card.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/MoneyOutCard/GhostCard/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_ghost_card_update_card_with_wiremock
    test_id = "ghost_card.update_card.0"

    @client.ghost_card.update_card(
      entry: "8cfec329267",
      card_token: "gc_abc123def456",
      status: "Cancelled",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "ghost_card.update_card.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "PATCH",
      url_path: "/MoneyOutCard/card/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end
end
