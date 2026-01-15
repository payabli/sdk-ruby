# frozen_string_literal: true

require_relative "wiremock_test_case"

class PaymentMethodDomainWireTest < WireMockTestCase
  def setup
    super

    @client = PayabliSdk::Client.new(
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_payment_method_domain_add_payment_method_domain_with_wiremock
    test_id = "payment_method_domain.add_payment_method_domain.0"

    @client.payment_method_domain.add_payment_method_domain(
      domain_name: "checkout.example.com",
      entity_id: 109,
      entity_type: "paypoint",
      apple_pay: {
        is_enabled: true
      },
      google_pay: {
        is_enabled: true
      },
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
  end
end
