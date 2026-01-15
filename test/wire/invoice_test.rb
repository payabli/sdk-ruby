# frozen_string_literal: true

require_relative "wiremock_test_case"

class InvoiceWireTest < WireMockTestCase
  def setup
    super

    @client = PayabliSdk::Client.new(
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_invoice_add_invoice_with_wiremock
    test_id = "invoice.add_invoice.0"

    @client.invoice.add_invoice(
      entry: "8cfec329267",
      customer_data: {
        first_name: "Tamara",
        last_name: "Bagratoni",
        customer_number: "3"
      },
      invoice_data: {
        items: [{
          item_product_name: "Adventure Consult",
          item_description: "Consultation for Georgian tours",
          item_cost: 100,
          item_qty: 1,
          item_mode: 1,
          item_total_amount: 1
        }, {
          item_product_name: "Deposit ",
          item_description: "Deposit for trip planning",
          item_cost: 882.37,
          item_qty: 1,
          item_total_amount: 1
        }],
        invoice_date: "2025-10-19",
        invoice_type: 0,
        invoice_status: 1,
        frequency: "onetime",
        invoice_amount: 982.37,
        discount: 10,
        invoice_number: "INV-3"
      },
      request_options: {
        additional_headers: {
          "X-Test-Id" => "invoice.add_invoice.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Invoice/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_invoice_delete_attached_from_invoice_with_wiremock
    test_id = "invoice.delete_attached_from_invoice.0"

    @client.invoice.delete_attached_from_invoice(
      filename: "0_Bill.pdf",
      id_invoice: 23_548_884,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "invoice.delete_attached_from_invoice.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/Invoice/attachedFileFromInvoice/23548884/0_Bill.pdf",
      query_params: nil,
      expected: 1
    )
  end

  def test_invoice_delete_invoice_with_wiremock
    test_id = "invoice.delete_invoice.0"

    @client.invoice.delete_invoice(
      id_invoice: 23_548_884,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "invoice.delete_invoice.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/Invoice/23548884",
      query_params: nil,
      expected: 1
    )
  end

  def test_invoice_edit_invoice_with_wiremock
    test_id = "invoice.edit_invoice.0"

    @client.invoice.edit_invoice(
      id_invoice: 332,
      invoice_data: {
        items: [{
          item_product_name: "Deposit",
          item_description: "Deposit for trip planning",
          item_cost: 882.37,
          item_qty: 1
        }],
        invoice_date: "2025-10-19",
        invoice_amount: 982.37,
        invoice_number: "INV-6"
      },
      request_options: {
        additional_headers: {
          "X-Test-Id" => "invoice.edit_invoice.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "PUT",
      url_path: "/Invoice/332",
      query_params: nil,
      expected: 1
    )
  end

  def test_invoice_get_attached_file_from_invoice_with_wiremock
    test_id = "invoice.get_attached_file_from_invoice.0"

    @client.invoice.get_attached_file_from_invoice(
      id_invoice: 1,
      filename: "filename",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "invoice.get_attached_file_from_invoice.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Invoice/attachedFileFromInvoice/1/filename",
      query_params: nil,
      expected: 1
    )
  end

  def test_invoice_get_invoice_with_wiremock
    test_id = "invoice.get_invoice.0"

    @client.invoice.get_invoice(
      id_invoice: 23_548_884,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "invoice.get_invoice.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Invoice/23548884",
      query_params: nil,
      expected: 1
    )
  end

  def test_invoice_get_invoice_number_with_wiremock
    test_id = "invoice.get_invoice_number.0"

    @client.invoice.get_invoice_number(
      entry: "8cfec329267",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "invoice.get_invoice_number.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Invoice/getNumber/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_invoice_list_invoices_with_wiremock
    test_id = "invoice.list_invoices.0"

    @client.invoice.list_invoices(
      entry: "8cfec329267",
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "invoice.list_invoices.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/invoices/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_invoice_list_invoices_org_with_wiremock
    test_id = "invoice.list_invoices_org.0"

    @client.invoice.list_invoices_org(
      org_id: 123,
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "invoice.list_invoices_org.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/invoices/org/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_invoice_send_invoice_with_wiremock
    test_id = "invoice.send_invoice.0"

    @client.invoice.send_invoice(
      id_invoice: 23_548_884,
      attachfile: true,
      mail_2: "tamara@example.com",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "invoice.send_invoice.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Invoice/send/23548884",
      query_params: nil,
      expected: 1
    )
  end

  def test_invoice_get_invoice_pdf_with_wiremock
    test_id = "invoice.get_invoice_pdf.0"

    @client.invoice.get_invoice_pdf(
      id_invoice: 23_548_884,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "invoice.get_invoice_pdf.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Export/invoicePdf/23548884",
      query_params: nil,
      expected: 1
    )
  end
end
