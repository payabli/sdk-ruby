# frozen_string_literal: true

require_relative "wiremock_test_case"

class NotificationlogsWireTest < WireMockTestCase
  def setup
    super

    @client = PayabliSdk::Client.new(
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_notificationlogs_search_notification_logs_with_wiremock
    test_id = "notificationlogs.search_notification_logs.0"

    @client.notificationlogs.search_notification_logs(
      page_size: 20,
      start_date: "2024-01-01T00:00:00Z",
      end_date: "2024-01-31T23:59:59Z",
      notification_event: "ActivatedMerchant",
      succeeded: true,
      org_id: 12_345,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "notificationlogs.search_notification_logs.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/notificationlogs",
      query_params: nil,
      expected: 1
    )
  end

  def test_notificationlogs_get_notification_log_with_wiremock
    test_id = "notificationlogs.get_notification_log.0"

    @client.notificationlogs.get_notification_log(
      uuid: "550e8400-e29b-41d4-a716-446655440000",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "notificationlogs.get_notification_log.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/notificationlogs/550e8400-e29b-41d4-a716-446655440000",
      query_params: nil,
      expected: 1
    )
  end

  def test_notificationlogs_retry_notification_log_with_wiremock
    test_id = "notificationlogs.retry_notification_log.0"

    @client.notificationlogs.retry_notification_log(
      uuid: "550e8400-e29b-41d4-a716-446655440000",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "notificationlogs.retry_notification_log.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/notificationlogs/550e8400-e29b-41d4-a716-446655440000/retry",
      query_params: nil,
      expected: 1
    )
  end

  def test_notificationlogs_bulk_retry_notification_logs_with_wiremock
    test_id = "notificationlogs.bulk_retry_notification_logs.0"

    @client.notificationlogs.bulk_retry_notification_logs(
      request: %w[550e8400-e29b-41d4-a716-446655440000 550e8400-e29b-41d4-a716-446655440001 550e8400-e29b-41d4-a716-446655440002],
      request_options: {
        additional_headers: {
          "X-Test-Id" => "notificationlogs.bulk_retry_notification_logs.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/notificationlogs/retry",
      query_params: nil,
      expected: 1
    )
  end
end
