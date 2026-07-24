# frozen_string_literal: true

require_relative "wiremock_test_case"

class PaymentMethodDomainWireTest < WireMockTestCase
  def setup
    super

    @client = Payabli::Client.new(
      client_id: "test-client-id",
      client_secret: "test-client-secret",
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_payment_method_domain_add_payment_method_domain_with_wiremock
    test_id = "payment_method_domain.add_payment_method_domain.0"

    @client.payment_method_domain.add_payment_method_domain(
      apple_pay: {
        is_enabled: true
      },
      google_pay: {
        is_enabled: true
      },
      domain_name: "checkout.example.com",
      entity_id: 109,
      entity_type: "paypoint",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "payment_method_domain.add_payment_method_domain.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/PaymentMethodDomain",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/PaymentMethodDomain",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_payment_method_domain_cascade_payment_method_domain_with_wiremock
    test_id = "payment_method_domain.cascade_payment_method_domain.0"

    @client.payment_method_domain.cascade_payment_method_domain(
      domain_id: "pmd_b8237fa45c964d8a9ef27160cd42b8c5",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "payment_method_domain.cascade_payment_method_domain.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/PaymentMethodDomain/pmd_b8237fa45c964d8a9ef27160cd42b8c5/cascade",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/PaymentMethodDomain/pmd_b8237fa45c964d8a9ef27160cd42b8c5/cascade",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_payment_method_domain_get_payment_method_domain_with_wiremock
    test_id = "payment_method_domain.get_payment_method_domain.0"

    @client.payment_method_domain.get_payment_method_domain(
      domain_id: "pmd_b8237fa45c964d8a9ef27160cd42b8c5",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "payment_method_domain.get_payment_method_domain.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/PaymentMethodDomain/pmd_b8237fa45c964d8a9ef27160cd42b8c5",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/PaymentMethodDomain/pmd_b8237fa45c964d8a9ef27160cd42b8c5",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_payment_method_domain_delete_payment_method_domain_with_wiremock
    test_id = "payment_method_domain.delete_payment_method_domain.0"

    @client.payment_method_domain.delete_payment_method_domain(
      domain_id: "pmd_b8237fa45c964d8a9ef27160cd42b8c5",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "payment_method_domain.delete_payment_method_domain.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/PaymentMethodDomain/pmd_b8237fa45c964d8a9ef27160cd42b8c5",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "DELETE",
      url_path: "/PaymentMethodDomain/pmd_b8237fa45c964d8a9ef27160cd42b8c5",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_payment_method_domain_update_payment_method_domain_with_wiremock
    test_id = "payment_method_domain.update_payment_method_domain.0"

    @client.payment_method_domain.update_payment_method_domain(
      domain_id: "pmd_b8237fa45c964d8a9ef27160cd42b8c5",
      apple_pay: {
        is_enabled: false
      },
      google_pay: {
        is_enabled: false
      },
      request_options: {
        additional_headers: {
          "X-Test-Id" => "payment_method_domain.update_payment_method_domain.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "PATCH",
      url_path: "/PaymentMethodDomain/pmd_b8237fa45c964d8a9ef27160cd42b8c5",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "PATCH",
      url_path: "/PaymentMethodDomain/pmd_b8237fa45c964d8a9ef27160cd42b8c5",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_payment_method_domain_list_payment_method_domains_with_wiremock
    test_id = "payment_method_domain.list_payment_method_domains.0"

    @client.payment_method_domain.list_payment_method_domains(
      entity_id: 1147,
      entity_type: "paypoint",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "payment_method_domain.list_payment_method_domains.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/PaymentMethodDomain/list",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/PaymentMethodDomain/list",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_payment_method_domain_verify_payment_method_domain_with_wiremock
    test_id = "payment_method_domain.verify_payment_method_domain.0"

    @client.payment_method_domain.verify_payment_method_domain(
      domain_id: "pmd_b8237fa45c964d8a9ef27160cd42b8c5",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "payment_method_domain.verify_payment_method_domain.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/PaymentMethodDomain/pmd_b8237fa45c964d8a9ef27160cd42b8c5/verify",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/PaymentMethodDomain/pmd_b8237fa45c964d8a9ef27160cd42b8c5/verify",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end
end
