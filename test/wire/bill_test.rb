# frozen_string_literal: true

require_relative "wiremock_test_case"

class BillWireTest < WireMockTestCase
  def setup
    super

    @client = Payabli::Client.new(
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_bill_add_bill_with_wiremock
    test_id = "bill.add_bill.0"

    @client.bill.add_bill(
      entry: "8cfec329267",
      accounting_field_1: "MyInternalId",
      attachments: [{
        ftype: "pdf",
        filename: "my-doc.pdf",
        furl: "https://mysite.com/my-doc.pdf"
      }],
      bill_date: "2024-07-01",
      bill_items: [{
        item_product_code: "M-DEPOSIT",
        item_product_name: "Materials deposit",
        item_description: "Deposit for materials",
        item_commodity_code: "010",
        item_unit_of_measure: "SqFt",
        item_cost: 5,
        item_qty: 1,
        item_mode: 0,
        item_categories: ["deposits"],
        item_total_amount: 123,
        item_tax_amount: 7,
        item_tax_rate: 0.075
      }],
      bill_number: "ABC-123",
      comments: "Deposit for materials",
      due_date: "2024-07-01",
      end_date: "2024-07-01",
      frequency: "monthly",
      mode: 0,
      net_amount: 3762.87,
      status: -99,
      terms: "NET30",
      vendor: {
        vendor_number: "1234-A"
      },
      request_options: {
        additional_headers: {
          "X-Test-Id" => "bill.add_bill.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Bill/single/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_bill_delete_attached_from_bill_with_wiremock
    test_id = "bill.delete_attached_from_bill.0"

    @client.bill.delete_attached_from_bill(
      filename: "0_Bill.pdf",
      id_bill: 285,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "bill.delete_attached_from_bill.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/Bill/attachedFileFromBill/285/0_Bill.pdf",
      query_params: nil,
      expected: 1
    )
  end

  def test_bill_delete_bill_with_wiremock
    test_id = "bill.delete_bill.0"

    @client.bill.delete_bill(
      id_bill: 285,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "bill.delete_bill.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/Bill/285",
      query_params: nil,
      expected: 1
    )
  end

  def test_bill_edit_bill_with_wiremock
    test_id = "bill.edit_bill.0"

    @client.bill.edit_bill(
      id_bill: 285,
      bill_date: "2025-07-01",
      net_amount: 3762.87,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "bill.edit_bill.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "PUT",
      url_path: "/Bill/285",
      query_params: nil,
      expected: 1
    )
  end

  def test_bill_get_attached_from_bill_with_wiremock
    test_id = "bill.get_attached_from_bill.0"

    @client.bill.get_attached_from_bill(
      filename: "0_Bill.pdf",
      id_bill: 285,
      return_object: true,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "bill.get_attached_from_bill.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Bill/attachedFileFromBill/285/0_Bill.pdf",
      query_params: nil,
      expected: 1
    )
  end

  def test_bill_get_bill_with_wiremock
    test_id = "bill.get_bill.0"

    @client.bill.get_bill(
      id_bill: 285,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "bill.get_bill.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Bill/285",
      query_params: nil,
      expected: 1
    )
  end

  def test_bill_list_bills_with_wiremock
    test_id = "bill.list_bills.0"

    @client.bill.list_bills(
      entry: "8cfec329267",
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "bill.list_bills.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/bills/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_bill_list_bills_org_with_wiremock
    test_id = "bill.list_bills_org.0"

    @client.bill.list_bills_org(
      org_id: 123,
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "bill.list_bills_org.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/bills/org/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_bill_modify_approval_bill_with_wiremock
    test_id = "bill.modify_approval_bill.0"

    @client.bill.modify_approval_bill(
      id_bill: 285,
      request: ["string"],
      request_options: {
        additional_headers: {
          "X-Test-Id" => "bill.modify_approval_bill.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "PUT",
      url_path: "/Bill/approval/285",
      query_params: nil,
      expected: 1
    )
  end

  def test_bill_send_to_approval_bill_with_wiremock
    test_id = "bill.send_to_approval_bill.0"

    @client.bill.send_to_approval_bill(
      id_bill: 285,
      idempotency_key: "6B29FC40-CA47-1067-B31D-00DD010662DA",
      body: ["string"],
      request_options: {
        additional_headers: {
          "X-Test-Id" => "bill.send_to_approval_bill.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Bill/approval/285",
      query_params: nil,
      expected: 1
    )
  end

  def test_bill_set_approved_bill_with_wiremock
    test_id = "bill.set_approved_bill.0"

    @client.bill.set_approved_bill(
      approved: "true",
      id_bill: 285,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "bill.set_approved_bill.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Bill/approval/285/true",
      query_params: nil,
      expected: 1
    )
  end
end
