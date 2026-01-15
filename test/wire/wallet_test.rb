# frozen_string_literal: true

require_relative "wiremock_test_case"

class WalletWireTest < WireMockTestCase
  def setup
    super

    @client = PayabliSdk::Client.new(
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_wallet_configure_apple_pay_organization_with_wiremock
    test_id = "wallet.configure_apple_pay_organization.0"

    @client.wallet.configure_apple_pay_organization(
      cascade: true,
      is_enabled: true,
      org_id: 901,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "wallet.configure_apple_pay_organization.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Wallet/applepay/configure-organization",
      query_params: nil,
      expected: 1
    )
  end

  def test_wallet_configure_apple_pay_paypoint_with_wiremock
    test_id = "wallet.configure_apple_pay_paypoint.0"

    @client.wallet.configure_apple_pay_paypoint(
      entry: "8cfec329267",
      is_enabled: true,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "wallet.configure_apple_pay_paypoint.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Wallet/applepay/configure-paypoint",
      query_params: nil,
      expected: 1
    )
  end

  def test_wallet_configure_google_pay_organization_with_wiremock
    test_id = "wallet.configure_google_pay_organization.0"

    @client.wallet.configure_google_pay_organization(
      cascade: true,
      is_enabled: true,
      org_id: 901,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "wallet.configure_google_pay_organization.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Wallet/googlepay/configure-organization",
      query_params: nil,
      expected: 1
    )
  end

  def test_wallet_configure_google_pay_paypoint_with_wiremock
    test_id = "wallet.configure_google_pay_paypoint.0"

    @client.wallet.configure_google_pay_paypoint(
      entry: "8cfec329267",
      is_enabled: true,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "wallet.configure_google_pay_paypoint.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Wallet/googlepay/configure-paypoint",
      query_params: nil,
      expected: 1
    )
  end
end
