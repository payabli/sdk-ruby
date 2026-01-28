# frozen_string_literal: true

require_relative "wiremock_test_case"

class PaypointWireTest < WireMockTestCase
  def setup
    super

    @client = Payabli::Client.new(
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_paypoint_get_basic_entry_with_wiremock
    test_id = "paypoint.get_basic_entry.0"

    @client.paypoint.get_basic_entry(
      entry: "8cfec329267",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "paypoint.get_basic_entry.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Paypoint/basic/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_paypoint_get_basic_entry_by_id_with_wiremock
    test_id = "paypoint.get_basic_entry_by_id.0"

    @client.paypoint.get_basic_entry_by_id(
      id_paypoint: "198",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "paypoint.get_basic_entry_by_id.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Paypoint/basicById/198",
      query_params: nil,
      expected: 1
    )
  end

  def test_paypoint_get_entry_config_with_wiremock
    test_id = "paypoint.get_entry_config.0"

    @client.paypoint.get_entry_config(
      entry: "8cfec329267",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "paypoint.get_entry_config.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Paypoint/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_paypoint_get_page_with_wiremock
    test_id = "paypoint.get_page.0"

    @client.paypoint.get_page(
      entry: "8cfec329267",
      subdomain: "pay-your-fees-1",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "paypoint.get_page.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Paypoint/8cfec329267/pay-your-fees-1",
      query_params: nil,
      expected: 1
    )
  end

  def test_paypoint_remove_page_with_wiremock
    test_id = "paypoint.remove_page.0"

    @client.paypoint.remove_page(
      entry: "8cfec329267",
      subdomain: "pay-your-fees-1",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "paypoint.remove_page.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/Paypoint/8cfec329267/pay-your-fees-1",
      query_params: nil,
      expected: 1
    )
  end

  def test_paypoint_save_logo_with_wiremock
    test_id = "paypoint.save_logo.0"

    @client.paypoint.save_logo(
      entry: "8cfec329267",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "paypoint.save_logo.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "PUT",
      url_path: "/Paypoint/logo/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_paypoint_settings_page_with_wiremock
    test_id = "paypoint.settings_page.0"

    @client.paypoint.settings_page(
      entry: "8cfec329267",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "paypoint.settings_page.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Paypoint/settings/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_paypoint_migrate_with_wiremock
    test_id = "paypoint.migrate.0"

    @client.paypoint.migrate(
      entry_point: "473abc123def",
      new_parent_organization_id: 123,
      notification_request: {
        notification_url: "https://webhook-test.yoursie.com",
        web_header_parameters: [{
          key: "testheader",
          value: "1234567890"
        }]
      },
      request_options: {
        additional_headers: {
          "X-Test-Id" => "paypoint.migrate.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Paypoint/migrate",
      query_params: nil,
      expected: 1
    )
  end
end
