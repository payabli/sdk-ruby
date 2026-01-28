# frozen_string_literal: true

require_relative "wiremock_test_case"

class OrganizationWireTest < WireMockTestCase
  def setup
    super

    @client = Payabli::Client.new(
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_organization_add_organization_with_wiremock
    test_id = "organization.add_organization.0"

    @client.organization.add_organization(
      idempotency_key: "6B29FC40-CA47-1067-B31D-00DD010662DA",
      billing_info: {
        ach_account: "123123123",
        ach_routing: "123123123",
        billing_address: "123 Walnut Street",
        billing_city: "Johnson City",
        billing_country: "US",
        billing_state: "TN",
        billing_zip: "37615"
      },
      contacts: [{
        contact_email: "herman@hermanscoatings.com",
        contact_name: "Herman Martinez",
        contact_phone: "3055550000",
        contact_title: "Owner"
      }],
      has_billing: true,
      has_residual: true,
      org_address: "123 Walnut Street",
      org_city: "Johnson City",
      org_country: "US",
      org_entry_name: "pilgrim-planner",
      org_id: "123",
      org_logo: {
        f_content: "TXkgdGVzdCBmaWxlHJ==...",
        filename: "my-doc.pdf",
        ftype: "pdf",
        furl: "https://mysite.com/my-doc.pdf"
      },
      org_name: "Pilgrim Planner",
      org_parent_id: 236,
      org_state: "TN",
      org_timezone: -5,
      org_type: 0,
      org_website: "www.pilgrimageplanner.com",
      org_zip: "37615",
      reply_to_email: "email@example.com",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "organization.add_organization.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Organization",
      query_params: nil,
      expected: 1
    )
  end

  def test_organization_delete_organization_with_wiremock
    test_id = "organization.delete_organization.0"

    @client.organization.delete_organization(
      org_id: 123,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "organization.delete_organization.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/Organization/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_organization_edit_organization_with_wiremock
    test_id = "organization.edit_organization.0"

    @client.organization.edit_organization(
      org_id: 123,
      contacts: [{
        contact_email: "herman@hermanscoatings.com",
        contact_name: "Herman Martinez",
        contact_phone: "3055550000",
        contact_title: "Owner"
      }],
      org_address: "123 Walnut Street",
      org_city: "Johnson City",
      org_country: "US",
      org_entry_name: "pilgrim-planner",
      organization_data_org_id: "123",
      org_name: "Pilgrim Planner",
      org_state: "TN",
      org_timezone: -5,
      org_type: 0,
      org_website: "www.pilgrimageplanner.com",
      org_zip: "37615",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "organization.edit_organization.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "PUT",
      url_path: "/Organization/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_organization_get_basic_organization_with_wiremock
    test_id = "organization.get_basic_organization.0"

    @client.organization.get_basic_organization(
      entry: "8cfec329267",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "organization.get_basic_organization.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Organization/basic/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_organization_get_basic_organization_by_id_with_wiremock
    test_id = "organization.get_basic_organization_by_id.0"

    @client.organization.get_basic_organization_by_id(
      org_id: 123,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "organization.get_basic_organization_by_id.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Organization/basicById/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_organization_get_organization_with_wiremock
    test_id = "organization.get_organization.0"

    @client.organization.get_organization(
      org_id: 123,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "organization.get_organization.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Organization/read/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_organization_get_settings_organization_with_wiremock
    test_id = "organization.get_settings_organization.0"

    @client.organization.get_settings_organization(
      org_id: 123,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "organization.get_settings_organization.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Organization/settings/123",
      query_params: nil,
      expected: 1
    )
  end
end
