# frozen_string_literal: true

require_relative "wiremock_test_case"

class MoneyInWireTest < WireMockTestCase
  def setup
    super

    @client = PayabliSdk::Client.new(
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_money_in_authorize_with_wiremock
    test_id = "money_in.authorize.0"

    @client.money_in.authorize(
      customer_data: {
        customer_id: 4440
      },
      entry_point: "f743aed24a",
      ipaddress: "255.255.255.255",
      payment_details: {
        service_fee: 0,
        total_amount: 100
      },
      payment_method: {
        cardcvv: "999",
        cardexp: "02/27",
        card_holder: "John Cassian",
        cardnumber: "4111111111111111",
        cardzip: "12345",
        initiator: "payor",
        method_: "card"
      },
      request_options: {
        additional_headers: {
          "X-Test-Id" => "money_in.authorize.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/MoneyIn/authorize",
      query_params: nil,
      expected: 1
    )
  end

  def test_money_in_capture_with_wiremock
    test_id = "money_in.capture.0"

    @client.money_in.capture(
      trans_id: "10-7d9cd67d-2d5d-4cd7-a1b7-72b8b201ec13",
      amount: 0,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "money_in.capture.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/MoneyIn/capture/10-7d9cd67d-2d5d-4cd7-a1b7-72b8b201ec13/0",
      query_params: nil,
      expected: 1
    )
  end

  def test_money_in_capture_auth_with_wiremock
    test_id = "money_in.capture_auth.0"

    @client.money_in.capture_auth(
      trans_id: "10-7d9cd67d-2d5d-4cd7-a1b7-72b8b201ec13",
      payment_details: {
        total_amount: 105,
        service_fee: 5
      },
      request_options: {
        additional_headers: {
          "X-Test-Id" => "money_in.capture_auth.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/MoneyIn/capture/10-7d9cd67d-2d5d-4cd7-a1b7-72b8b201ec13",
      query_params: nil,
      expected: 1
    )
  end

  def test_money_in_credit_with_wiremock
    test_id = "money_in.credit.0"

    @client.money_in.credit(
      idempotency_key: "6B29FC40-CA47-1067-B31D-00DD010662DA",
      customer_data: {
        billing_address_1: "5127 Linkwood ave",
        customer_number: "100"
      },
      entrypoint: "my-entrypoint",
      payment_details: {
        service_fee: 0,
        total_amount: 1
      },
      payment_method: {
        ach_account: "88354454",
        ach_account_type: "Checking",
        ach_holder: "John Smith",
        ach_routing: "021000021",
        method_: "ach"
      },
      request_options: {
        additional_headers: {
          "X-Test-Id" => "money_in.credit.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/MoneyIn/makecredit",
      query_params: nil,
      expected: 1
    )
  end

  def test_money_in_details_with_wiremock
    test_id = "money_in.details.0"

    @client.money_in.details(
      trans_id: "45-as456777hhhhhhhhhh77777777-324",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "money_in.details.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/MoneyIn/details/45-as456777hhhhhhhhhh77777777-324",
      query_params: nil,
      expected: 1
    )
  end

  def test_money_in_getpaid_with_wiremock
    test_id = "money_in.getpaid.0"

    @client.money_in.getpaid(
      customer_data: {
        customer_id: 4440
      },
      entry_point: "f743aed24a",
      ipaddress: "255.255.255.255",
      payment_details: {
        service_fee: 0,
        total_amount: 100
      },
      payment_method: {
        cardcvv: "999",
        cardexp: "02/27",
        card_holder: "John Cassian",
        cardnumber: "4111111111111111",
        cardzip: "12345",
        initiator: "payor",
        method_: "card"
      },
      request_options: {
        additional_headers: {
          "X-Test-Id" => "money_in.getpaid.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/MoneyIn/getpaid",
      query_params: nil,
      expected: 1
    )
  end

  def test_money_in_reverse_with_wiremock
    test_id = "money_in.reverse.0"

    @client.money_in.reverse(
      amount: 0,
      trans_id: "10-3ffa27df-b171-44e0-b251-e95fbfc7a723",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "money_in.reverse.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/MoneyIn/reverse/10-3ffa27df-b171-44e0-b251-e95fbfc7a723/0",
      query_params: nil,
      expected: 1
    )
  end

  def test_money_in_refund_with_wiremock
    test_id = "money_in.refund.0"

    @client.money_in.refund(
      amount: 0,
      trans_id: "10-3ffa27df-b171-44e0-b251-e95fbfc7a723",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "money_in.refund.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/MoneyIn/refund/10-3ffa27df-b171-44e0-b251-e95fbfc7a723/0",
      query_params: nil,
      expected: 1
    )
  end

  def test_money_in_refund_with_instructions_with_wiremock
    test_id = "money_in.refund_with_instructions.0"

    @client.money_in.refund_with_instructions(
      trans_id: "10-3ffa27df-b171-44e0-b251-e95fbfc7a723",
      idempotency_key: "8A29FC40-CA47-1067-B31D-00DD010662DB",
      source: "api",
      order_description: "Materials deposit",
      amount: 100,
      refund_details: {
        split_refunding: [{
          origination_entry_point: "7f1a381696",
          account_id: "187-342",
          description: "Refunding undelivered materials",
          amount: 60
        }, {
          origination_entry_point: "7f1a381696",
          account_id: "187-343",
          description: "Refunding deposit for undelivered materials",
          amount: 40
        }]
      },
      request_options: {
        additional_headers: {
          "X-Test-Id" => "money_in.refund_with_instructions.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/MoneyIn/refund/10-3ffa27df-b171-44e0-b251-e95fbfc7a723",
      query_params: nil,
      expected: 1
    )
  end

  def test_money_in_reverse_credit_with_wiremock
    test_id = "money_in.reverse_credit.0"

    @client.money_in.reverse_credit(
      trans_id: "45-as456777hhhhhhhhhh77777777-324",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "money_in.reverse_credit.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/MoneyIn/reverseCredit/45-as456777hhhhhhhhhh77777777-324",
      query_params: nil,
      expected: 1
    )
  end

  def test_money_in_send_receipt_2_trans_with_wiremock
    test_id = "money_in.send_receipt_2_trans.0"

    @client.money_in.send_receipt_2_trans(
      trans_id: "45-as456777hhhhhhhhhh77777777-324",
      email: "example@email.com",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "money_in.send_receipt_2_trans.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/MoneyIn/sendreceipt/45-as456777hhhhhhhhhh77777777-324",
      query_params: nil,
      expected: 1
    )
  end

  def test_money_in_validate_with_wiremock
    test_id = "money_in.validate.0"

    @client.money_in.validate(
      idempotency_key: "6B29FC40-CA47-1067-B31D-00DD010662DA",
      entry_point: "entry132",
      payment_method: {
        method_: "card",
        cardnumber: "4360000001000005",
        cardexp: "12/29",
        cardzip: "14602-8328",
        card_holder: "Dianne Becker-Smith"
      },
      request_options: {
        additional_headers: {
          "X-Test-Id" => "money_in.validate.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/MoneyIn/validate",
      query_params: nil,
      expected: 1
    )
  end

  def test_money_in_void_with_wiremock
    test_id = "money_in.void.0"

    @client.money_in.void(
      trans_id: "10-3ffa27df-b171-44e0-b251-e95fbfc7a723",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "money_in.void.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/MoneyIn/void/10-3ffa27df-b171-44e0-b251-e95fbfc7a723",
      query_params: nil,
      expected: 1
    )
  end

  def test_money_in_getpaidv_2_with_wiremock
    test_id = "money_in.getpaidv_2.0"

    @client.money_in.getpaidv_2(
      customer_data: {
        customer_id: 4440
      },
      entry_point: "f743aed24a",
      ipaddress: "255.255.255.255",
      payment_details: {
        service_fee: 0,
        total_amount: 100
      },
      payment_method: {
        cardcvv: "999",
        cardexp: "02/27",
        card_holder: "John Cassian",
        cardnumber: "4111111111111111",
        cardzip: "12345",
        initiator: "payor",
        method_: "card"
      },
      request_options: {
        additional_headers: {
          "X-Test-Id" => "money_in.getpaidv_2.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/MoneyIn/getpaid",
      query_params: nil,
      expected: 1
    )
  end

  def test_money_in_authorizev_2_with_wiremock
    test_id = "money_in.authorizev_2.0"

    @client.money_in.authorizev_2(
      customer_data: {
        customer_id: 4440
      },
      entry_point: "f743aed24a",
      ipaddress: "255.255.255.255",
      payment_details: {
        service_fee: 0,
        total_amount: 100
      },
      payment_method: {
        cardcvv: "999",
        cardexp: "02/27",
        card_holder: "John Cassian",
        cardnumber: "4111111111111111",
        cardzip: "12345",
        initiator: "payor",
        method_: "card"
      },
      request_options: {
        additional_headers: {
          "X-Test-Id" => "money_in.authorizev_2.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/MoneyIn/authorize",
      query_params: nil,
      expected: 1
    )
  end

  def test_money_in_capturev_2_with_wiremock
    test_id = "money_in.capturev_2.0"

    @client.money_in.capturev_2(
      trans_id: "10-7d9cd67d-2d5d-4cd7-a1b7-72b8b201ec13",
      payment_details: {
        total_amount: 105,
        service_fee: 5
      },
      request_options: {
        additional_headers: {
          "X-Test-Id" => "money_in.capturev_2.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/MoneyIn/capture/10-7d9cd67d-2d5d-4cd7-a1b7-72b8b201ec13",
      query_params: nil,
      expected: 1
    )
  end

  def test_money_in_refundv_2_with_wiremock
    test_id = "money_in.refundv_2.0"

    @client.money_in.refundv_2(
      trans_id: "10-3ffa27df-b171-44e0-b251-e95fbfc7a723",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "money_in.refundv_2.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/MoneyIn/refund/10-3ffa27df-b171-44e0-b251-e95fbfc7a723",
      query_params: nil,
      expected: 1
    )
  end

  def test_money_in_refundv_2_amount_with_wiremock
    test_id = "money_in.refundv_2_amount.0"

    @client.money_in.refundv_2_amount(
      trans_id: "10-3ffa27df-b171-44e0-b251-e95fbfc7a723",
      amount: 0,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "money_in.refundv_2_amount.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/MoneyIn/refund/10-3ffa27df-b171-44e0-b251-e95fbfc7a723/0",
      query_params: nil,
      expected: 1
    )
  end

  def test_money_in_voidv_2_with_wiremock
    test_id = "money_in.voidv_2.0"

    @client.money_in.voidv_2(
      trans_id: "10-3ffa27df-b171-44e0-b251-e95fbfc7a723",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "money_in.voidv_2.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/MoneyIn/void/10-3ffa27df-b171-44e0-b251-e95fbfc7a723",
      query_params: nil,
      expected: 1
    )
  end
end
