# frozen_string_literal: true

require_relative "wiremock_test_case"

class BoardingTemplatesWireTest < WireMockTestCase
  def setup
    super

    @client = Payabli::Client.new(
      client_id: "test-client-id",
      client_secret: "test-client-secret",
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_boarding_templates_list_templates_with_wiremock
    test_id = "boarding_templates.list_templates.0"

    @client.boarding_templates.list_templates(
      org_id: 123,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "boarding_templates.list_templates.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/templates",
      query_params: { "orgId" => "123" },
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/templates",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_boarding_templates_get_template_with_wiremock
    test_id = "boarding_templates.get_template.0"

    @client.boarding_templates.get_template(
      uuid: "019ff129-d393-7761-9a31-e5afe85b4081",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "boarding_templates.get_template.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/templates/019ff129-d393-7761-9a31-e5afe85b4081",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/templates/019ff129-d393-7761-9a31-e5afe85b4081",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_boarding_templates_archive_template_with_wiremock
    test_id = "boarding_templates.archive_template.0"

    @client.boarding_templates.archive_template(
      uuid: "019ff129-d393-7761-9a31-e5afe85b4081",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "boarding_templates.archive_template.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/v2/templates/019ff129-d393-7761-9a31-e5afe85b4081",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "DELETE",
      url_path: "/v2/templates/019ff129-d393-7761-9a31-e5afe85b4081",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_boarding_templates_get_template_version_with_wiremock
    test_id = "boarding_templates.get_template_version.0"

    @client.boarding_templates.get_template_version(
      uuid: "019ff129-d393-7761-9a31-e5afe85b4081",
      version_uuid: "019ff129-d396-74c4-86da-ae3d082d7ef9",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "boarding_templates.get_template_version.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/templates/019ff129-d393-7761-9a31-e5afe85b4081/versions/019ff129-d396-74c4-86da-ae3d082d7ef9",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/templates/019ff129-d393-7761-9a31-e5afe85b4081/versions/019ff129-d396-74c4-86da-ae3d082d7ef9",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end
end
