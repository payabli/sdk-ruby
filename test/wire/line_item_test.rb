# frozen_string_literal: true

require_relative "wiremock_test_case"

class LineItemWireTest < WireMockTestCase
  def setup
    super

    @client = Payabli::Client.new(
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_line_item_add_item_with_wiremock
    test_id = "line_item.add_item.0"

    @client.line_item.add_item(
      entry: "47cae3d74",
      item_commodity_code: "010",
      item_cost: 12.45,
      item_description: "Deposit for materials",
      item_mode: 0,
      item_product_code: "M-DEPOSIT",
      item_product_name: "Materials deposit",
      item_qty: 1,
      item_unit_of_measure: "SqFt",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "line_item.add_item.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/LineItem/47cae3d74",
      query_params: nil,
      expected: 1
    )
  end

  def test_line_item_delete_item_with_wiremock
    test_id = "line_item.delete_item.0"

    @client.line_item.delete_item(
      line_item_id: 700,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "line_item.delete_item.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/LineItem/700",
      query_params: nil,
      expected: 1
    )
  end

  def test_line_item_get_item_with_wiremock
    test_id = "line_item.get_item.0"

    @client.line_item.get_item(
      line_item_id: 700,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "line_item.get_item.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/LineItem/700",
      query_params: nil,
      expected: 1
    )
  end

  def test_line_item_list_line_items_with_wiremock
    test_id = "line_item.list_line_items.0"

    @client.line_item.list_line_items(
      entry: "8cfec329267",
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "line_item.list_line_items.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/lineitems/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_line_item_update_item_with_wiremock
    test_id = "line_item.update_item.0"

    @client.line_item.update_item(
      line_item_id: 700,
      item_cost: 12.45,
      item_qty: 1,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "line_item.update_item.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "PUT",
      url_path: "/LineItem/700",
      query_params: nil,
      expected: 1
    )
  end
end
