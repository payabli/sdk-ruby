# frozen_string_literal: true

require_relative "wiremock_test_case"

class PaymentMethodsWireTest < WireMockTestCase
  def setup
    super

    @client = Payabli::Client.new(
      client_id: "test-client-id",
      client_secret: "test-client-secret",
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_payment_methods_list_payment_methods_with_wiremock
    test_id = "payment_methods.list_payment_methods.0"

    @client.payment_methods.list_payment_methods(
      limit: 1,
      page: 1,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "payment_methods.list_payment_methods.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/payment-methods",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/payment-methods",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_payment_methods_create_payment_methods_with_wiremock
    test_id = "payment_methods.create_payment_methods.0"

    @client.payment_methods.create_payment_methods(
      data: [{
        type: "bank_account",
        account_owner: "019fed1a-3d6e-75d3-a81e-cba3874b0a55",
        owner_type: "business",
        account_type: "checking",
        account_number: "123456789",
        routing_number: "021000021",
        nickname: "Operating account",
        financial_institution: "Bank of Example",
        usage: %w[deposits billing]
      }],
      request_options: {
        additional_headers: {
          "X-Test-Id" => "payment_methods.create_payment_methods.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/payment-methods",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/payment-methods",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_payment_methods_get_payment_method_with_wiremock
    test_id = "payment_methods.get_payment_method.0"

    @client.payment_methods.get_payment_method(
      payment_method_reference: "019ff142-454b-7721-96a3-c8628b9d568f",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "payment_methods.get_payment_method.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/payment-methods/019ff142-454b-7721-96a3-c8628b9d568f",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/payment-methods/019ff142-454b-7721-96a3-c8628b9d568f",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_payment_methods_deactivate_payment_method_with_wiremock
    test_id = "payment_methods.deactivate_payment_method.0"

    @client.payment_methods.deactivate_payment_method(
      payment_method_reference: "019ff142-454b-7721-96a3-c8628b9d568f",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "payment_methods.deactivate_payment_method.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/v2/payment-methods/019ff142-454b-7721-96a3-c8628b9d568f",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "DELETE",
      url_path: "/v2/payment-methods/019ff142-454b-7721-96a3-c8628b9d568f",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_payment_methods_update_payment_method_with_wiremock
    test_id = "payment_methods.update_payment_method.0"

    @client.payment_methods.update_payment_method(
      payment_method_reference: "019ff142-454b-7721-96a3-c8628b9d568f",
      nickname: "Primary operating account",
      usage: %w[deposits billing],
      request_options: {
        additional_headers: {
          "X-Test-Id" => "payment_methods.update_payment_method.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "PATCH",
      url_path: "/v2/payment-methods/019ff142-454b-7721-96a3-c8628b9d568f",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "PATCH",
      url_path: "/v2/payment-methods/019ff142-454b-7721-96a3-c8628b9d568f",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end
end
