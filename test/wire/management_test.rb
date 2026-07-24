# frozen_string_literal: true

require_relative "wiremock_test_case"

class ManagementWireTest < WireMockTestCase
  def setup
    super

    @client = Payabli::Client.new(
      client_id: "test-client-id",
      client_secret: "test-client-secret",
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_management_verify_account_details_with_wiremock
    test_id = "management.verify_account_details.0"

    @client.management.verify_account_details(
      entry: "8cfec329267",
      routing_number: "122105278",
      account_number: "0000000016",
      account_type: "Checking",
      country: "US",
      account_holder_type: "personal",
      holder_name: "Jane Doe",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "management.verify_account_details.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Management/verifyAccountDetails/8cfec329267",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/Management/verifyAccountDetails/8cfec329267",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end
end
