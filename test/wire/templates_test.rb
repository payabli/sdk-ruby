# frozen_string_literal: true

require_relative "wiremock_test_case"

class TemplatesWireTest < WireMockTestCase
  def setup
    super

    @client = Payabli::Client.new(
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_templates_delete_template_with_wiremock
    test_id = "templates.delete_template.0"

    @client.templates.delete_template(
      template_id: 80,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "templates.delete_template.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/Templates/80",
      query_params: nil,
      expected: 1
    )
  end

  def test_templates_getlink_template_with_wiremock
    test_id = "templates.getlink_template.0"

    @client.templates.getlink_template(
      ignore_empty: true,
      template_id: 80,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "templates.getlink_template.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Templates/getlink/80/true",
      query_params: nil,
      expected: 1
    )
  end

  def test_templates_get_template_with_wiremock
    test_id = "templates.get_template.0"

    @client.templates.get_template(
      template_id: 80,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "templates.get_template.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Templates/get/80",
      query_params: nil,
      expected: 1
    )
  end

  def test_templates_list_templates_with_wiremock
    test_id = "templates.list_templates.0"

    @client.templates.list_templates(
      org_id: 123,
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "templates.list_templates.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/templates/123",
      query_params: nil,
      expected: 1
    )
  end
end
