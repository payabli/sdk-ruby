# frozen_string_literal: true

require_relative "wiremock_test_case"

class ChargeBacksWireTest < WireMockTestCase
  def setup
    super

    @client = Payabli::Client.new(
      client_id: "test-client-id",
      client_secret: "test-client-secret",
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_charge_backs_add_response_with_wiremock
    test_id = "charge_backs.add_response.0"

    @client.charge_backs.add_response(
      id: 1000000,
      idempotency_key: "6B29FC40-CA47-1067-B31D-00DD010662DA",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "charge_backs.add_response.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/ChargeBacks/response/1000000",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/ChargeBacks/response/1000000",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_charge_backs_get_chargeback_with_wiremock
    test_id = "charge_backs.get_chargeback.0"

    @client.charge_backs.get_chargeback(
      id: 1000000,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "charge_backs.get_chargeback.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/ChargeBacks/read/1000000",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/ChargeBacks/read/1000000",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_charge_backs_get_chargeback_attachment_with_wiremock
    test_id = "charge_backs.get_chargeback_attachment.0"

    @client.charge_backs.get_chargeback_attachment(
      id: 1000000,
      file_name: "fileName",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "charge_backs.get_chargeback_attachment.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/ChargeBacks/getChargebackAttachments/1000000/fileName",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/ChargeBacks/getChargebackAttachments/1000000/fileName",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end
end
