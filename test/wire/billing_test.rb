# frozen_string_literal: true

require_relative "wiremock_test_case"

class BillingWireTest < WireMockTestCase
  def setup
    super

    @client = Payabli::Client.new(
      client_id: "test-client-id",
      client_secret: "test-client-secret",
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_billing_list_profiles_with_wiremock
    test_id = "billing.list_profiles.0"

    @client.billing.list_profiles(
      org_id: 123,
      limit_record: 20,
      from_record: 0,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "billing.list_profiles.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/billing/configuration/org/123",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/billing/configuration/org/123",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_billing_get_profile_with_wiremock
    test_id = "billing.get_profile.0"

    @client.billing.get_profile(
      service_group: "PayIn",
      entity_type: "Organization",
      entity_id: 123,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "billing.get_profile.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/billing/configuration/PayIn/Organization/123",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/billing/configuration/PayIn/Organization/123",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end
end
