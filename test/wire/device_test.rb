# frozen_string_literal: true

require_relative "wiremock_test_case"

class DeviceWireTest < WireMockTestCase
  def setup
    super

    @client = Payabli::Client.new(
      client_id: "test-client-id",
      client_secret: "test-client-secret",
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_device_challenge_with_wiremock
    test_id = "device.challenge.0"

    @client.device.challenge(
      entry: "8cfec329267",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "device.challenge.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Device/challenge/8cfec329267",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/Device/challenge/8cfec329267",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end
end
