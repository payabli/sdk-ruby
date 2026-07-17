# frozen_string_literal: true

require_relative "wiremock_test_case"

class FundingWireTest < WireMockTestCase
  def setup
    super

    @client = Payabli::Client.new(
      client_id: "test-client-id",
      client_secret: "test-client-secret",
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_funding_deposit_funds_with_wiremock
    test_id = "funding.deposit_funds.0"

    @client.funding.deposit_funds(
      amount: 10,
      entrypoint: "48acde49",
      account_id: "333",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "funding.deposit_funds.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Funding/depositFunds",
      query_params: nil,
      expected: 1
    )
  end
end
