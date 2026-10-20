# frozen_string_literal: true

require_relative "wiremock_test_case"

class PaypointsWireTest < WireMockTestCase
  def setup
    super

    @client = Payabli::Client.new(
      client_id: "test-client-id",
      client_secret: "test-client-secret",
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_paypoints_list_paypoints_with_wiremock
    test_id = "paypoints.list_paypoints.0"

    @client.paypoints.list_paypoints(
      limit: 1,
      page: 1,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "paypoints.list_paypoints.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/paypoints",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/paypoints",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_paypoints_create_paypoint_with_wiremock
    test_id = "paypoints.create_paypoint.0"

    @client.paypoints.create_paypoint(
      paypoint_type: "merchant",
      doing_business_as: "Rose Gardens",
      description: "Boutique flower shop",
      website: "https://example.com",
      customer_service_phone: "3055551212",
      customer_service_email: "support@example.com",
      timezone: "America/New_York",
      business_reference: "019fed1a-3d6e-75d3-a81e-cba3874b0a55",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "paypoints.create_paypoint.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/paypoints",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/paypoints",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_paypoints_get_paypoint_with_wiremock
    test_id = "paypoints.get_paypoint.0"

    @client.paypoints.get_paypoint(
      paypoint_reference: "019ff064-c690-7679-a73e-688418aadc7c",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "paypoints.get_paypoint.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/paypoints/019ff064-c690-7679-a73e-688418aadc7c",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/paypoints/019ff064-c690-7679-a73e-688418aadc7c",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_paypoints_update_paypoint_with_wiremock
    test_id = "paypoints.update_paypoint.0"

    @client.paypoints.update_paypoint(
      paypoint_reference: "019ff064-c690-7679-a73e-688418aadc7c",
      description: "Updated description",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "paypoints.update_paypoint.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "PATCH",
      url_path: "/v2/paypoints/019ff064-c690-7679-a73e-688418aadc7c",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "PATCH",
      url_path: "/v2/paypoints/019ff064-c690-7679-a73e-688418aadc7c",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end
end
