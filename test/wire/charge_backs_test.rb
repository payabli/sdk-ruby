# frozen_string_literal: true

require_relative "wiremock_test_case"

class ChargeBacksWireTest < WireMockTestCase
  def setup
    super

    @client = PayabliSdk::Client.new(
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_charge_backs_add_response_with_wiremock
    test_id = "charge_backs.add_response.0"

    @client.charge_backs.add_response(
      id: 1_000_000,
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
  end

  def test_charge_backs_get_chargeback_with_wiremock
    test_id = "charge_backs.get_chargeback.0"

    @client.charge_backs.get_chargeback(
      id: 1_000_000,
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
  end

  def test_charge_backs_get_chargeback_attachment_with_wiremock
    test_id = "charge_backs.get_chargeback_attachment.0"

    @client.charge_backs.get_chargeback_attachment(
      id: 1_000_000,
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
  end
end
