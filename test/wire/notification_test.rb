# frozen_string_literal: true

require_relative "wiremock_test_case"

class NotificationWireTest < WireMockTestCase
  def setup
    super

    @client = PayabliSdk::Client.new(
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_notification_add_notification_with_wiremock
    test_id = "notification.add_notification.0"

    @client.notification.add_notification(
      content: {
        event_type: "CreatedApplication"
      },
      frequency: "untilcancelled",
      method_: "web",
      owner_id: "236",
      owner_type: 0,
      status: 1,
      target: "https://webhook.site/2871b8f8-edc7-441a-b376-98d8c8e33275",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "notification.add_notification.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Notification",
      query_params: nil,
      expected: 1
    )
  end

  def test_notification_delete_notification_with_wiremock
    test_id = "notification.delete_notification.0"

    @client.notification.delete_notification(
      n_id: "1717",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "notification.delete_notification.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/Notification/1717",
      query_params: nil,
      expected: 1
    )
  end

  def test_notification_get_notification_with_wiremock
    test_id = "notification.get_notification.0"

    @client.notification.get_notification(
      n_id: "1717",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "notification.get_notification.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Notification/1717",
      query_params: nil,
      expected: 1
    )
  end

  def test_notification_update_notification_with_wiremock
    test_id = "notification.update_notification.0"

    @client.notification.update_notification(
      n_id: "1717",
      content: {
        event_type: "ApprovedPayment"
      },
      frequency: "untilcancelled",
      method_: "email",
      owner_id: "136",
      owner_type: 0,
      status: 1,
      target: "newemail@email.com",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "notification.update_notification.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "PUT",
      url_path: "/Notification/1717",
      query_params: nil,
      expected: 1
    )
  end

  def test_notification_get_report_file_with_wiremock
    test_id = "notification.get_report_file.0"

    @client.notification.get_report_file(
      id: 1_000_000,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "notification.get_report_file.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Export/notificationReport/1000000",
      query_params: nil,
      expected: 1
    )
  end
end
