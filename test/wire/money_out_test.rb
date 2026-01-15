# frozen_string_literal: true

require_relative "wiremock_test_case"

class MoneyOutWireTest < WireMockTestCase
  def setup
    super

    @client = PayabliSdk::Client.new(
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_money_out_authorize_out_with_wiremock
    test_id = "money_out.authorize_out.0"

    @client.money_out.authorize_out(
      entry_point: "48acde49",
      order_description: "Window Painting",
      payment_method: {
        method_: "managed"
      },
      payment_details: {
        total_amount: 47,
        unbundled: false
      },
      vendor_data: {
        vendor_number: "7895433"
      },
      invoice_data: [{
        bill_id: 54_323
      }],
      request_options: {
        additional_headers: {
          "X-Test-Id" => "money_out.authorize_out.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/MoneyOut/authorize",
      query_params: nil,
      expected: 1
    )
  end

  def test_money_out_cancel_all_out_with_wiremock
    test_id = "money_out.cancel_all_out.0"

    @client.money_out.cancel_all_out(
      request: %w[2-29 2-28 2-27],
      request_options: {
        additional_headers: {
          "X-Test-Id" => "money_out.cancel_all_out.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/MoneyOut/cancelAll",
      query_params: nil,
      expected: 1
    )
  end

  def test_money_out_cancel_out_get_with_wiremock
    test_id = "money_out.cancel_out_get.0"

    @client.money_out.cancel_out_get(
      reference_id: "129-219",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "money_out.cancel_out_get.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/MoneyOut/cancel/129-219",
      query_params: nil,
      expected: 1
    )
  end

  def test_money_out_cancel_out_delete_with_wiremock
    test_id = "money_out.cancel_out_delete.0"

    @client.money_out.cancel_out_delete(
      reference_id: "129-219",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "money_out.cancel_out_delete.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/MoneyOut/cancel/129-219",
      query_params: nil,
      expected: 1
    )
  end

  def test_money_out_capture_all_out_with_wiremock
    test_id = "money_out.capture_all_out.0"

    @client.money_out.capture_all_out(
      body: %w[2-29 2-28 2-27],
      request_options: {
        additional_headers: {
          "X-Test-Id" => "money_out.capture_all_out.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/MoneyOut/captureAll",
      query_params: nil,
      expected: 1
    )
  end

  def test_money_out_capture_out_with_wiremock
    test_id = "money_out.capture_out.0"

    @client.money_out.capture_out(
      reference_id: "129-219",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "money_out.capture_out.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/MoneyOut/capture/129-219",
      query_params: nil,
      expected: 1
    )
  end

  def test_money_out_payout_details_with_wiremock
    test_id = "money_out.payout_details.0"

    @client.money_out.payout_details(
      trans_id: "45-as456777hhhhhhhhhh77777777-324",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "money_out.payout_details.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/MoneyOut/details/45-as456777hhhhhhhhhh77777777-324",
      query_params: nil,
      expected: 1
    )
  end

  def test_money_out_v_card_get_with_wiremock
    test_id = "money_out.v_card_get.0"

    @client.money_out.v_card_get(
      card_token: "20230403315245421165",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "money_out.v_card_get.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/MoneyOut/vcard/20230403315245421165",
      query_params: nil,
      expected: 1
    )
  end

  def test_money_out_send_v_card_link_with_wiremock
    test_id = "money_out.send_v_card_link.0"

    @client.money_out.send_v_card_link(
      trans_id: "01K33Z6YQZ6GD5QVKZ856MJBSC",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "money_out.send_v_card_link.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/vcard/send-card-link",
      query_params: nil,
      expected: 1
    )
  end

  def test_money_out_get_check_image_with_wiremock
    test_id = "money_out.get_check_image.0"

    @client.money_out.get_check_image(
      asset_name: "check133832686289732320_01JKBNZ5P32JPTZY8XXXX000000.pdf",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "money_out.get_check_image.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/MoneyOut/checkimage/check133832686289732320_01JKBNZ5P32JPTZY8XXXX000000.pdf",
      query_params: nil,
      expected: 1
    )
  end
end
