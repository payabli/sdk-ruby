# frozen_string_literal: true

require_relative "wiremock_test_case"

class TokenStorageWireTest < WireMockTestCase
  def setup
    super

    @client = PayabliSdk::Client.new(
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_token_storage_add_method_with_wiremock
    test_id = "token_storage.add_method.0"

    @client.token_storage.add_method(
      customer_data: {
        customer_id: 4440
      },
      entry_point: "f743aed24a",
      fallback_auth: true,
      payment_method: {
        cardcvv: "123",
        cardexp: "02/25",
        card_holder: "John Doe",
        cardnumber: "4111111111111111",
        cardzip: "12345",
        method_: "card"
      },
      request_options: {
        additional_headers: {
          "X-Test-Id" => "token_storage.add_method.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/TokenStorage/add",
      query_params: nil,
      expected: 1
    )
  end

  def test_token_storage_get_method_with_wiremock
    test_id = "token_storage.get_method.0"

    @client.token_storage.get_method(
      method_id: "32-8877drt00045632-678",
      card_expiration_format: 1,
      include_temporary: false,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "token_storage.get_method.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/TokenStorage/32-8877drt00045632-678",
      query_params: nil,
      expected: 1
    )
  end

  def test_token_storage_remove_method_with_wiremock
    test_id = "token_storage.remove_method.0"

    @client.token_storage.remove_method(
      method_id: "32-8877drt00045632-678",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "token_storage.remove_method.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/TokenStorage/32-8877drt00045632-678",
      query_params: nil,
      expected: 1
    )
  end

  def test_token_storage_update_method_with_wiremock
    test_id = "token_storage.update_method.0"

    @client.token_storage.update_method(
      method_id: "32-8877drt00045632-678",
      customer_data: {
        customer_id: 4440
      },
      entry_point: "f743aed24a",
      fallback_auth: true,
      payment_method: {
        cardcvv: "123",
        cardexp: "02/25",
        card_holder: "John Doe",
        cardnumber: "4111111111111111",
        cardzip: "12345",
        method_: "card"
      },
      request_options: {
        additional_headers: {
          "X-Test-Id" => "token_storage.update_method.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "PUT",
      url_path: "/TokenStorage/32-8877drt00045632-678",
      query_params: nil,
      expected: 1
    )
  end
end
