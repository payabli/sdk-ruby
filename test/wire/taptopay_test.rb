# frozen_string_literal: true

require_relative "wiremock_test_case"

class TaptopayWireTest < WireMockTestCase
  def setup
    super

    @client = Payabli::Client.new(
      client_id: "test-client-id",
      client_secret: "test-client-secret",
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_taptopay_activation_challenge_with_wiremock
    test_id = "taptopay.activation_challenge.0"

    @client.taptopay.activation_challenge(
      entry: "8cfec329267",
      device_id: "499585-389fj484-3jcj8hj3",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "taptopay.activation_challenge.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/device/taptopay/activate/challenge",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/device/taptopay/activate/challenge",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end
end
