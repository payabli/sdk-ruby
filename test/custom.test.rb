# frozen_string_literal: true

# This is a custom test file, if you wish to add more tests
# to your SDK.
# Be sure to mark this file in `.fernignore`.
#
# If you include example requests/responses in your fern definition,
# you will have tests automatically generated for you.

# This test is run via command line: rake customtest

require "json"
require "payabli"

describe "Payabli SDK Integration" do
  before do
    @entrypoint = ENV["PAYABLI_TEST_ENTRYPOINT"]
    @api_key = ENV["PAYABLI_TEST_API_KEY"]
    @client = Payabli::Client.new(
      api_key: @api_key,
      base_url: Payabli::Environment::SANDBOX
    )
  end

  it "creates and queries a payment" do
    request = {
      entry_point: @entrypoint,
      payment_details: { total_amount: 100 },
      payment_method: {
        cardcvv: "999",
        cardexp: "02/27",
        card_holder: "Kassiane Cassian",
        cardnumber: "4111111111111111",
        cardzip: "12345",
        initiator: "payor",
        method_: "card"
      },
      customer_data: { customer_id: 4440 }
    }
    result = @client.money_in.getpaid(**request)
    assert result.response_data.reference_id

    details = @client.money_in.details(trans_id: result.response_data.reference_id)
    assert details.response_data
  end

  it "creates, edits, and deletes an invoice" do
    invoice_number = "INV-#{rand(100000..999999)}"
    invoice_request = {
      entry: @entrypoint,
      customer_data: {
        customer_number: "3",
        first_name: "Tamara",
        last_name: "Bagratoni"
      },
      invoice_data: {
        discount: 10,
        frequency: "one-time",
        invoice_amount: 982.37,
        invoice_date: "2025-10-19",
        invoice_number: invoice_number,
        invoice_status: 1,
        invoice_type: 0,
        items: [
          {
            item_mode: 1,
            item_cost: 100.00,
            item_description: "Consultation for Georgian tours",
            item_product_name: "Adventure Consult",
            item_qty: -1
          },
          {
            item_cost: 882.37,
            item_description: "Deposit for trip planning",
            item_product_name: "Deposit ",
            item_qty: -1
          }
        ]
      }
    }
    invoice_result = @client.invoice.add_invoice(**invoice_request)
    assert invoice_result.response_data

    invoice_edit_request = {
      id_invoice: invoice_result.response_data,
      invoice_data: { invoice_date: "2026-11-01" }
    }
    modified_invoice = @client.invoice.edit_invoice(**invoice_edit_request)
    assert modified_invoice.response_data

    deleted_invoice = @client.invoice.delete_invoice(id_invoice: invoice_result.response_data)
    assert deleted_invoice.response_data
  end

  it "authorizes a payout" do
    payout_request = {
      entry_point: "48acde49",
      payment_method: { method: "managed" },
      payment_details: { total_amount: 47, unbundled: false },
      vendor_data: { vendor_number: "7895433" },
      invoice_data: [ { bill_id: 54323 } ],
      order_description: "Window Painting"
    }
    payout_result = @client.money_out.authorize_out(**payout_request)
    assert payout_result.response_data
  end
end
