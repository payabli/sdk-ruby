# frozen_string_literal: true

require_relative "wiremock_test_case"

class CloudWireTest < WireMockTestCase
  def setup
    super

    @client = PayabliSdk::Client.new(
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_cloud_add_device_with_wiremock
    test_id = "cloud.add_device.0"

    @client.cloud.add_device(
      entry: "8cfec329267",
      registration_code: "YS7DS5",
      description: "Front Desk POS",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "cloud.add_device.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Cloud/register/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_cloud_history_device_with_wiremock
    test_id = "cloud.history_device.0"

    @client.cloud.history_device(
      device_id: "WXGDWB",
      entry: "8cfec329267",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "cloud.history_device.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Cloud/history/8cfec329267/WXGDWB",
      query_params: nil,
      expected: 1
    )
  end

  def test_cloud_list_device_with_wiremock
    test_id = "cloud.list_device.0"

    @client.cloud.list_device(
      entry: "8cfec329267",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "cloud.list_device.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Cloud/list/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_cloud_remove_device_with_wiremock
    test_id = "cloud.remove_device.0"

    @client.cloud.remove_device(
      device_id: "6c361c7d-674c-44cc-b790-382b75d1xxx",
      entry: "8cfec329267",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "cloud.remove_device.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/Cloud/register/8cfec329267/6c361c7d-674c-44cc-b790-382b75d1xxx",
      query_params: nil,
      expected: 1
    )
  end
end
