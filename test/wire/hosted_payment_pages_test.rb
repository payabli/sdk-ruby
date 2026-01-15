# frozen_string_literal: true

require_relative "wiremock_test_case"

class HostedPaymentPagesWireTest < WireMockTestCase
  def setup
    super

    @client = PayabliSdk::Client.new(
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_hosted_payment_pages_load_page_with_wiremock
    test_id = "hosted_payment_pages.load_page.0"

    @client.hosted_payment_pages.load_page(
      entry: "8cfec329267",
      subdomain: "pay-your-fees-1",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "hosted_payment_pages.load_page.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Paypoint/load/8cfec329267/pay-your-fees-1",
      query_params: nil,
      expected: 1
    )
  end

  def test_hosted_payment_pages_new_page_with_wiremock
    test_id = "hosted_payment_pages.new_page.0"

    @client.hosted_payment_pages.new_page(
      entry: "8cfec329267",
      idempotency_key: "6B29FC40-CA47-1067-B31D-00DD010662DA",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "hosted_payment_pages.new_page.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Paypoint/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_hosted_payment_pages_save_page_with_wiremock
    test_id = "hosted_payment_pages.save_page.0"

    @client.hosted_payment_pages.save_page(
      entry: "8cfec329267",
      subdomain: "pay-your-fees-1",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "hosted_payment_pages.save_page.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "PUT",
      url_path: "/Paypoint/8cfec329267/pay-your-fees-1",
      query_params: nil,
      expected: 1
    )
  end
end
