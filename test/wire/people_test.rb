# frozen_string_literal: true

require_relative "wiremock_test_case"

class PeopleWireTest < WireMockTestCase
  def setup
    super

    @client = Payabli::Client.new(
      client_id: "test-client-id",
      client_secret: "test-client-secret",
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_people_list_people_with_wiremock
    test_id = "people.list_people.0"

    @client.people.list_people(
      limit: 1,
      page: 1,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "people.list_people.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/people",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/people",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_people_create_person_with_wiremock
    test_id = "people.create_person.0"

    @client.people.create_person(
      first_name: "Marcus",
      middle_name: "James",
      last_name: "Delgado",
      primary_email: "marcus.delgado@example.com",
      secondary_email: "m.delgado@example.net",
      primary_phone_number: "3055551212",
      secondary_phone_number: "3055559876",
      date_of_birth: "1985-03-14",
      ssn: "412-55-9021",
      nationality: "US",
      drivers_license_number: "D1234567",
      drivers_license_state: "FL",
      external_id: "person-001",
      custom_data: {
        department: "finance"
      },
      addresses: [{
        address_line_1: "123 Main Street",
        address_line_2: "Suite 400",
        city_locality: "Miami",
        state_province: "FL",
        postal_code: "33101",
        country: "US",
        type: "legal"
      }],
      identification_documents: [{
        type: "passport",
        number: "X1234567",
        issuing_country: "US",
        expiration_date: "2030-06-30"
      }],
      business_relationship: {
        business_reference: "019fed1a-3d6e-75d3-a81e-cba3874b0a55",
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
        }
      },
      request_options: {
        additional_headers: {
          "X-Test-Id" => "people.create_person.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/people",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/people",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_people_get_person_with_wiremock
    test_id = "people.get_person.0"

    @client.people.get_person(
      person_reference: "01a0014d-ce1a-7110-9bac-c4c59647a88d",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "people.get_person.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/people/01a0014d-ce1a-7110-9bac-c4c59647a88d",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/people/01a0014d-ce1a-7110-9bac-c4c59647a88d",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_people_update_person_with_wiremock
    test_id = "people.update_person.0"

    @client.people.update_person(
      person_reference: "01a0014d-ce1a-7110-9bac-c4c59647a88d",
      primary_phone_number: "3055550199",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "people.update_person.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "PATCH",
      url_path: "/v2/people/01a0014d-ce1a-7110-9bac-c4c59647a88d",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "PATCH",
      url_path: "/v2/people/01a0014d-ce1a-7110-9bac-c4c59647a88d",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_people_get_person_unmasked_with_wiremock
    test_id = "people.get_person_unmasked.0"

    @client.people.get_person_unmasked(
      person_reference: "01a0014d-ce1a-7110-9bac-c4c59647a88d",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "people.get_person_unmasked.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/people/01a0014d-ce1a-7110-9bac-c4c59647a88d/unmasked",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/people/01a0014d-ce1a-7110-9bac-c4c59647a88d/unmasked",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_people_search_people_with_wiremock
    test_id = "people.search_people.0"

    @client.people.search_people(
      entry: "8cfec329267",
      org_id: 123,
      request: {
        firstName: "Marcus",
        lastName: "Delgado"
      },
      request_options: {
        additional_headers: {
          "X-Test-Id" => "people.search_people.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/people/search",
      query_params: { "entry" => "8cfec329267", "orgId" => "123" },
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/people/search",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_people_search_people_unmasked_with_wiremock
    test_id = "people.search_people_unmasked.0"

    @client.people.search_people_unmasked(
      entry: "8cfec329267",
      org_id: 123,
      request: {
        firstName: "Marcus",
        lastName: "Delgado"
      },
      request_options: {
        additional_headers: {
          "X-Test-Id" => "people.search_people_unmasked.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/people/search/unmasked",
      query_params: { "entry" => "8cfec329267", "orgId" => "123" },
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/people/search/unmasked",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end
end
