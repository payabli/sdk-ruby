# frozen_string_literal: true

require_relative "wiremock_test_case"

class BusinessesWireTest < WireMockTestCase
  def setup
    super

    @client = Payabli::Client.new(
      client_id: "test-client-id",
      client_secret: "test-client-secret",
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_businesses_list_businesses_with_wiremock
    test_id = "businesses.list_businesses.0"

    @client.businesses.list_businesses(
      limit: 1,
      page: 1,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "businesses.list_businesses.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/businesses",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/businesses",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_businesses_create_business_with_wiremock
    test_id = "businesses.create_business.0"

    @client.businesses.create_business(
      external_id: "rg-001",
      legal_name: "Rose Gardens LLC",
      legal_structure: "llc",
      website: "https://example.com",
      merchant_cat_code: "5814",
      phone: ["3055551212"],
      emails: ["ops@example.com"],
      payment_methods: [{
        type: "bank_account",
        name: "Operating account",
        financial_institution: "Bank of Example",
        owner_type: "business",
        account_type: "checking",
        account_number: "123456789",
        routing_number: "021000021",
        usage: %w[deposits billing],
        is_default: true
      }, {
        type: "bank_account",
        name: "Payout account",
        financial_institution: "Bank of Example",
        owner_type: "business",
        account_type: "checking",
        account_number: "987654321",
        routing_number: "021000021",
        usage: ["payOutFunding"],
        is_default: false
      }],
      tax_reference: "477498993",
      parent_reference: "8cfec329267",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "businesses.create_business.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/businesses",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/businesses",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_businesses_get_business_with_wiremock
    test_id = "businesses.get_business.0"

    @client.businesses.get_business(
      business_reference: "019fed1a-3d6e-75d3-a81e-cba3874b0a55",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "businesses.get_business.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/businesses/019fed1a-3d6e-75d3-a81e-cba3874b0a55",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/businesses/019fed1a-3d6e-75d3-a81e-cba3874b0a55",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_businesses_deactivate_business_with_wiremock
    test_id = "businesses.deactivate_business.0"

    @client.businesses.deactivate_business(
      business_reference: "019fed33-615d-77b6-afaa-46e7ac9bf36e",
      reason: "Duplicate record",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "businesses.deactivate_business.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/v2/businesses/019fed33-615d-77b6-afaa-46e7ac9bf36e",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "DELETE",
      url_path: "/v2/businesses/019fed33-615d-77b6-afaa-46e7ac9bf36e",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_businesses_update_business_with_wiremock
    test_id = "businesses.update_business.0"

    @client.businesses.update_business(
      business_reference: "019fed1a-3d6e-75d3-a81e-cba3874b0a55",
      website: "https://example.org",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "businesses.update_business.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "PATCH",
      url_path: "/v2/businesses/019fed1a-3d6e-75d3-a81e-cba3874b0a55",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "PATCH",
      url_path: "/v2/businesses/019fed1a-3d6e-75d3-a81e-cba3874b0a55",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_businesses_get_business_unmasked_with_wiremock
    test_id = "businesses.get_business_unmasked.0"

    @client.businesses.get_business_unmasked(
      business_reference: "019fed1a-3d6e-75d3-a81e-cba3874b0a55",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "businesses.get_business_unmasked.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/businesses/019fed1a-3d6e-75d3-a81e-cba3874b0a55/unmasked",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/businesses/019fed1a-3d6e-75d3-a81e-cba3874b0a55/unmasked",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_businesses_list_business_addresses_with_wiremock
    test_id = "businesses.list_business_addresses.0"

    @client.businesses.list_business_addresses(
      business_reference: "019fed1a-3d6e-75d3-a81e-cba3874b0a55",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "businesses.list_business_addresses.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/businesses/019fed1a-3d6e-75d3-a81e-cba3874b0a55/addresses",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/businesses/019fed1a-3d6e-75d3-a81e-cba3874b0a55/addresses",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_businesses_create_business_address_with_wiremock
    test_id = "businesses.create_business_address.0"

    @client.businesses.create_business_address(
      business_reference: "019fed1a-3d6e-75d3-a81e-cba3874b0a55",
      type: "mailing",
      location: "warehouse",
      address_line_1: "202 Warehouse Ln",
      city_locality: "Austin",
      state_province: "TX",
      postal_code: "73302",
      country: "US",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "businesses.create_business_address.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/businesses/019fed1a-3d6e-75d3-a81e-cba3874b0a55/addresses",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/businesses/019fed1a-3d6e-75d3-a81e-cba3874b0a55/addresses",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_businesses_get_business_address_with_wiremock
    test_id = "businesses.get_business_address.0"

    @client.businesses.get_business_address(
      business_reference: "019fed1a-3d6e-75d3-a81e-cba3874b0a55",
      business_address_reference: "019fed1a-84a6-7043-a6c0-e8aa2d4bec36",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "businesses.get_business_address.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/businesses/019fed1a-3d6e-75d3-a81e-cba3874b0a55/addresses/019fed1a-84a6-7043-a6c0-e8aa2d4bec36",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/businesses/019fed1a-3d6e-75d3-a81e-cba3874b0a55/addresses/019fed1a-84a6-7043-a6c0-e8aa2d4bec36",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_businesses_delete_business_address_with_wiremock
    test_id = "businesses.delete_business_address.0"

    @client.businesses.delete_business_address(
      business_reference: "019fed1a-3d6e-75d3-a81e-cba3874b0a55",
      business_address_reference: "019fed1a-67d6-768a-b4cc-29d4299e21d9",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "businesses.delete_business_address.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/v2/businesses/019fed1a-3d6e-75d3-a81e-cba3874b0a55/addresses/019fed1a-67d6-768a-b4cc-29d4299e21d9",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "DELETE",
      url_path: "/v2/businesses/019fed1a-3d6e-75d3-a81e-cba3874b0a55/addresses/019fed1a-67d6-768a-b4cc-29d4299e21d9",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_businesses_update_business_address_with_wiremock
    test_id = "businesses.update_business_address.0"

    @client.businesses.update_business_address(
      business_reference: "019fed1a-3d6e-75d3-a81e-cba3874b0a55",
      business_address_reference: "019fed1a-67d6-768a-b4cc-29d4299e21d9",
      type: "billing",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "businesses.update_business_address.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "PATCH",
      url_path: "/v2/businesses/019fed1a-3d6e-75d3-a81e-cba3874b0a55/addresses/019fed1a-67d6-768a-b4cc-29d4299e21d9",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "PATCH",
      url_path: "/v2/businesses/019fed1a-3d6e-75d3-a81e-cba3874b0a55/addresses/019fed1a-67d6-768a-b4cc-29d4299e21d9",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_businesses_list_business_people_with_wiremock
    test_id = "businesses.list_business_people.0"

    @client.businesses.list_business_people(
      business_reference: "019fed1a-3d6e-75d3-a81e-cba3874b0a55",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "businesses.list_business_people.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/businesses/019fed1a-3d6e-75d3-a81e-cba3874b0a55/people",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/businesses/019fed1a-3d6e-75d3-a81e-cba3874b0a55/people",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_businesses_link_business_person_with_wiremock
    test_id = "businesses.link_business_person.0"

    @client.businesses.link_business_person(
      business_reference: "019fed1a-3d6e-75d3-a81e-cba3874b0a55",
      person_reference: "01a0014d-ce1a-7110-9bac-c4c59647a88d",
      person_type: "Owner",
      ownership_percentage: 100,
      is_primary_controller: true,
      is_signer: true,
      title: "CEO",
      primary_email: "contact@example.com",
      secondary_email: "contact.alt@example.net",
      primary_phone_number: "3055551212",
      secondary_phone_number: "3055559876",
      billing_address: {
        address_line_1: "123 Main Street",
        city_locality: "Miami",
        state_province: "FL",
        postal_code: "33101",
        country: "US",
        type: "billing"
      },
      mailing_address: {
        address_line_1: "456 Oak Avenue",
        city_locality: "Miami",
        state_province: "FL",
        postal_code: "33102",
        country: "US",
        type: "mailing"
      },
      request_options: {
        additional_headers: {
          "X-Test-Id" => "businesses.link_business_person.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/businesses/019fed1a-3d6e-75d3-a81e-cba3874b0a55/people",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/businesses/019fed1a-3d6e-75d3-a81e-cba3874b0a55/people",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_businesses_get_business_person_with_wiremock
    test_id = "businesses.get_business_person.0"

    @client.businesses.get_business_person(
      business_reference: "019fed1a-3d6e-75d3-a81e-cba3874b0a55",
      person_reference: "01a0014d-ce1a-7110-9bac-c4c59647a88d",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "businesses.get_business_person.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/businesses/019fed1a-3d6e-75d3-a81e-cba3874b0a55/people/01a0014d-ce1a-7110-9bac-c4c59647a88d",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/businesses/019fed1a-3d6e-75d3-a81e-cba3874b0a55/people/01a0014d-ce1a-7110-9bac-c4c59647a88d",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_businesses_unlink_business_person_with_wiremock
    test_id = "businesses.unlink_business_person.0"

    @client.businesses.unlink_business_person(
      business_reference: "019fed1a-3d6e-75d3-a81e-cba3874b0a55",
      person_reference: "01a0014d-ce1a-7110-9bac-c4c59647a88d",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "businesses.unlink_business_person.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/v2/businesses/019fed1a-3d6e-75d3-a81e-cba3874b0a55/people/01a0014d-ce1a-7110-9bac-c4c59647a88d",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "DELETE",
      url_path: "/v2/businesses/019fed1a-3d6e-75d3-a81e-cba3874b0a55/people/01a0014d-ce1a-7110-9bac-c4c59647a88d",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_businesses_update_business_person_with_wiremock
    test_id = "businesses.update_business_person.0"

    @client.businesses.update_business_person(
      business_reference: "019fed1a-3d6e-75d3-a81e-cba3874b0a55",
      person_reference: "01a0014d-ce1a-7110-9bac-c4c59647a88d",
      is_primary_controller: true,
      primary_email: "updated.contact@example.com",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "businesses.update_business_person.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "PATCH",
      url_path: "/v2/businesses/019fed1a-3d6e-75d3-a81e-cba3874b0a55/people/01a0014d-ce1a-7110-9bac-c4c59647a88d",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "PATCH",
      url_path: "/v2/businesses/019fed1a-3d6e-75d3-a81e-cba3874b0a55/people/01a0014d-ce1a-7110-9bac-c4c59647a88d",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end
end
