# frozen_string_literal: true

require_relative "wiremock_test_case"

class CheckCaptureWireTest < WireMockTestCase
  def setup
    super

    @client = Payabli::Client.new(
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_check_capture_check_processing_with_wiremock
    test_id = "check_capture.check_processing.0"

    @client.check_capture.check_processing(
      entry_point: "47abcfea12",
      front_image: "/9j/4AAQSkZJRgABAQEASABIAAD...",
      rear_image: "/9j/4AAQSkZJRgABAQEASABIAAD...",
      check_amount: 12_550,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "check_capture.check_processing.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/CheckCapture/CheckProcessing",
      query_params: nil,
      expected: 1
    )
  end
end
