# frozen_string_literal: true

require_relative "wiremock_test_case"

class OrganizationsWireTest < WireMockTestCase
  def setup
    super

    @client = Payabli::Client.new(
      client_id: "test-client-id",
      client_secret: "test-client-secret",
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_organizations_list_organizations_with_wiremock
    test_id = "organizations.list_organizations.0"

    @client.organizations.list_organizations(
      business_reference: "6e2b9d14-7a3c-4f58-b1e6-0c9d3a5f8e27",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "organizations.list_organizations.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/organizations",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/organizations",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_organizations_create_organization_with_wiremock
    test_id = "organizations.create_organization.0"

    @client.organizations.create_organization(
      doing_business_as: "PropertyManager Pro",
      description: "Property management software partner",
      website: "https://example.com",
      customer_service_phone: "3055551212",
      customer_service_email: "support@example.com",
      timezone: "America/New_York",
      external_id: "pmp-org-001",
      business: {
        legal_name: "PropertyManager Pro LLC",
        legal_structure: "llc",
        external_id: "pmp-biz-001"
      },
      request_options: {
        additional_headers: {
          "X-Test-Id" => "organizations.create_organization.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/organizations",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/organizations",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_organizations_get_organization_with_wiremock
    test_id = "organizations.get_organization.0"

    @client.organizations.get_organization(
      organization_reference: "a8806f02-23b3-4f6d-bba3-42e1b94326ea",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "organizations.get_organization.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/organizations/a8806f02-23b3-4f6d-bba3-42e1b94326ea",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/organizations/a8806f02-23b3-4f6d-bba3-42e1b94326ea",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_organizations_update_organization_with_wiremock
    test_id = "organizations.update_organization.0"

    @client.organizations.update_organization(
      organization_reference: "a8806f02-23b3-4f6d-bba3-42e1b94326ea",
      description: "Updated description",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "organizations.update_organization.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "PATCH",
      url_path: "/v2/organizations/a8806f02-23b3-4f6d-bba3-42e1b94326ea",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "PATCH",
      url_path: "/v2/organizations/a8806f02-23b3-4f6d-bba3-42e1b94326ea",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end
end
