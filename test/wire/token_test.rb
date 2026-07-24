# frozen_string_literal: true

require_relative "wiremock_test_case"

class TokenWireTest < WireMockTestCase
  def setup
    super

    @client = Payabli::Client.new(
      client_id: "test-client-id",
      client_secret: "test-client-secret",
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_token_create_server_side_token_with_wiremock
    test_id = "token.create_server_side_token.0"

    @client.token.create_server_side_token(
      client_id: "YOUR_CLIENT_ID",
      client_secret: "YOUR_CLIENT_SECRET",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "token.create_server_side_token.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/Token/serverside",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/Token/serverside",
      matchers: [
        { name: "Authorization", kind: "absent" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end
end
