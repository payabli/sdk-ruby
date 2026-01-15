# frozen_string_literal: true

require_relative "wiremock_test_case"

class BoardingWireTest < WireMockTestCase
  def setup
    super

    @client = PayabliSdk::Client.new(
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_boarding_add_application_with_wiremock
    test_id = "boarding.add_application.0"

    @client.boarding.add_application(
      services: {
        ach: {},
        card: {
          accept_amex: true,
          accept_discover: true,
          accept_mastercard: true,
          accept_visa: true
        }
      },
      annual_revenue: 1000,
      average_bill_size: "500",
      average_monthly_bill: "5650",
      avgmonthly: 1000,
      baddress: "123 Walnut Street",
      baddress_1: "Suite 103",
      bank_data: {},
      bcity: "New Vegas",
      bcountry: "US",
      binperson: 60,
      binphone: 20,
      binweb: 20,
      bstate: "FL",
      bsummary: "Brick and mortar store that sells office supplies",
      btype: "Limited Liability Company",
      bzip: "33000",
      contacts: [{
        contact_email: "herman@hermanscoatings.com",
        contact_name: "Herman Martinez",
        contact_phone: "3055550000",
        contact_title: "Owner"
      }],
      credit_limit: "creditLimit",
      dba_name: "Sunshine Gutters",
      ein: "123456789",
      faxnumber: "1234567890",
      highticketamt: 1000,
      legal_name: "Sunshine Services, LLC",
      license: "2222222FFG",
      licstate: "CA",
      maddress: "123 Walnut Street",
      maddress_1: "STE 900",
      mcc: "7777",
      mcity: "Johnson City",
      mcountry: "US",
      mstate: "TN",
      mzip: "37615",
      org_id: 123,
      ownership: [{
        oaddress: "33 North St",
        ocity: "Any City",
        ocountry: "US",
        odriverstate: "CA",
        ostate: "CA",
        ownerdob: "01/01/1990",
        ownerdriver: "CA6677778",
        owneremail: "test@email.com",
        ownername: "John Smith",
        ownerpercent: 100,
        ownerphone_1: "555888111",
        ownerphone_2: "555888111",
        ownerssn: "123456789",
        ownertitle: "CEO",
        ozip: "55555"
      }],
      phonenumber: "1234567890",
      processing_region: "US",
      recipient_email: "josephray@example.com",
      recipient_email_notification: true,
      resumable: true,
      signer: {
        address: "33 North St",
        address_1: "STE 900",
        city: "Bristol",
        country: "US",
        dob: "01/01/1976",
        email: "test@email.com",
        name: "John Smith",
        phone: "555888111",
        ssn: "123456789",
        state: "TN",
        zip: "55555",
        pci_attestation: true,
        signed_document_reference: "https://example.com/signed-document.pdf",
        attestation_date: "04/20/2025",
        sign_date: "04/20/2025",
        additional_data: '{"deviceId":"499585-389fj484-3jcj8hj3","session":"fifji4-fiu443-fn4843","timeWithCompany":"6 Years"}'
      },
      startdate: "01/01/1990",
      tax_fill_name: "Sunshine LLC",
      template_id: 22,
      ticketamt: 1000,
      website: "www.example.com",
      when_charged: "When Service Provided",
      when_delivered: "Over 30 Days",
      when_provided: "30 Days or Less",
      when_refunded: "30 Days or Less",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "boarding.add_application.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Boarding/app",
      query_params: nil,
      expected: 1
    )
  end

  def test_boarding_delete_application_with_wiremock
    test_id = "boarding.delete_application.0"

    @client.boarding.delete_application(
      app_id: 352,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "boarding.delete_application.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/Boarding/app/352",
      query_params: nil,
      expected: 1
    )
  end

  def test_boarding_get_application_with_wiremock
    test_id = "boarding.get_application.0"

    @client.boarding.get_application(
      app_id: 352,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "boarding.get_application.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Boarding/read/352",
      query_params: nil,
      expected: 1
    )
  end

  def test_boarding_get_application_by_auth_with_wiremock
    test_id = "boarding.get_application_by_auth.0"

    @client.boarding.get_application_by_auth(
      x_id: "17E",
      email: "admin@email.com",
      reference_id: "n6UCd1f1ygG7",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "boarding.get_application_by_auth.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Boarding/read/17E",
      query_params: nil,
      expected: 1
    )
  end

  def test_boarding_get_by_id_link_application_with_wiremock
    test_id = "boarding.get_by_id_link_application.0"

    @client.boarding.get_by_id_link_application(
      boarding_link_id: 91,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "boarding.get_by_id_link_application.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Boarding/linkbyId/91",
      query_params: nil,
      expected: 1
    )
  end

  def test_boarding_get_by_template_id_link_application_with_wiremock
    test_id = "boarding.get_by_template_id_link_application.0"

    @client.boarding.get_by_template_id_link_application(
      template_id: 80,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "boarding.get_by_template_id_link_application.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Boarding/linkbyTemplate/80",
      query_params: nil,
      expected: 1
    )
  end

  def test_boarding_get_external_application_with_wiremock
    test_id = "boarding.get_external_application.0"

    @client.boarding.get_external_application(
      app_id: 352,
      mail_2: "mail2",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "boarding.get_external_application.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "PUT",
      url_path: "/Boarding/applink/352/mail2",
      query_params: nil,
      expected: 1
    )
  end

  def test_boarding_get_link_application_with_wiremock
    test_id = "boarding.get_link_application.0"

    @client.boarding.get_link_application(
      boarding_link_reference: "myorgaccountname-00091",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "boarding.get_link_application.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Boarding/link/myorgaccountname-00091",
      query_params: nil,
      expected: 1
    )
  end

  def test_boarding_list_applications_with_wiremock
    test_id = "boarding.list_applications.0"

    @client.boarding.list_applications(
      org_id: 123,
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "boarding.list_applications.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/boarding/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_boarding_list_boarding_links_with_wiremock
    test_id = "boarding.list_boarding_links.0"

    @client.boarding.list_boarding_links(
      org_id: 123,
      from_record: 251,
      limit_record: 0,
      sort_by: "desc(field_name)",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "boarding.list_boarding_links.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Query/boardinglinks/123",
      query_params: nil,
      expected: 1
    )
  end

  def test_boarding_update_application_with_wiremock
    test_id = "boarding.update_application.0"

    @client.boarding.update_application(
      app_id: 352,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "boarding.update_application.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "PUT",
      url_path: "/Boarding/app/352",
      query_params: nil,
      expected: 1
    )
  end
end
