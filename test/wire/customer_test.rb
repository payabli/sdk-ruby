# frozen_string_literal: true

require_relative "wiremock_test_case"

class CustomerWireTest < WireMockTestCase
  def setup
    super

    @client = PayabliSdk::Client.new(
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_customer_add_customer_with_wiremock
    test_id = "customer.add_customer.0"

    @client.customer.add_customer(
      entry: "8cfec329267",
      customer_number: "12356ACB",
      firstname: "Irene",
      lastname: "Canizales",
      email: "irene@canizalesconcrete.com",
      address_1: "123 Bishop's Trail",
      city: "Mountain City",
      state: "TN",
      zip: "37612",
      country: "US",
      time_zone: -5,
      identifier_fields: ["email"],
      request_options: {
        additional_headers: {
          "X-Test-Id" => "customer.add_customer.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Customer/single/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_customer_delete_customer_with_wiremock
    test_id = "customer.delete_customer.0"

    @client.customer.delete_customer(
      customer_id: 998,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "customer.delete_customer.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/Customer/998",
      query_params: nil,
      expected: 1
    )
  end

  def test_customer_get_customer_with_wiremock
    test_id = "customer.get_customer.0"

    @client.customer.get_customer(
      customer_id: 998,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "customer.get_customer.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Customer/998",
      query_params: nil,
      expected: 1
    )
  end

  def test_customer_link_customer_transaction_with_wiremock
    test_id = "customer.link_customer_transaction.0"

    @client.customer.link_customer_transaction(
      customer_id: 998,
      trans_id: "45-as456777hhhhhhhhhh77777777-324",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "customer.link_customer_transaction.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Customer/link/998/45-as456777hhhhhhhhhh77777777-324",
      query_params: nil,
      expected: 1
    )
  end

  def test_customer_request_consent_with_wiremock
    test_id = "customer.request_consent.0"

    @client.customer.request_consent(
      customer_id: 998,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "customer.request_consent.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Customer/998/consent",
      query_params: nil,
      expected: 1
    )
  end

  def test_customer_update_customer_with_wiremock
    test_id = "customer.update_customer.0"

    @client.customer.update_customer(
      customer_id: 998,
      firstname: "Irene",
      lastname: "Canizales",
      address_1: "145 Bishop's Trail",
      city: "Mountain City",
      state: "TN",
      zip: "37612",
      country: "US",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "customer.update_customer.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "PUT",
      url_path: "/Customer/998",
      query_params: nil,
      expected: 1
    )
  end
end
