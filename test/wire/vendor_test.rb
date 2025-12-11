# frozen_string_literal: true

require_relative "wire_helper"
require "net/http"
require "json"
require "uri"
require "payabli"

class VendorWireTest < Minitest::Test
  WIREMOCK_BASE_URL = "http://localhost:8080"
  WIREMOCK_ADMIN_URL = "http://localhost:8080/__admin"

  def setup
    super
    return if ENV["RUN_WIRE_TESTS"] == "true"

    skip "Wire tests are disabled by default. Set RUN_WIRE_TESTS=true to enable them."
  end

  def verify_request_count(test_id:, method:, url_path:, expected:, query_params: nil)
    uri = URI("#{WIREMOCK_ADMIN_URL}/requests/find")
    http = Net::HTTP.new(uri.host, uri.port)
    post_request = Net::HTTP::Post.new(uri.path, { "Content-Type" => "application/json" })

    request_body = { "method" => method, "urlPath" => url_path }
    request_body["headers"] = { "X-Test-Id" => { "equalTo" => test_id } }
    request_body["queryParameters"] = query_params.transform_values { |v| { "equalTo" => v } } if query_params

    post_request.body = request_body.to_json
    response = http.request(post_request)
    result = JSON.parse(response.body)
    requests = result["requests"] || []

    assert_equal expected, requests.length, "Expected #{expected} requests, found #{requests.length}"
  end

  def test_vendor_add_vendor_with_wiremock
    test_id = "vendor.add_vendor.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.vendor.add_vendor(
      entry: "8cfec329267",
      vendor_number: "1234",
      address_1: "123 Ocean Drive",
      address_2: "Suite 400",
      billing_data: {
        id: 123,
        bank_name: "Country Bank",
        routing_account: "123123123",
        account_number: "123123123",
        type_account: "Checking",
        bank_account_holder_name: "Gruzya Adventure Outfitters LLC",
        bank_account_holder_type: "Business",
        bank_account_function: 0
      },
      city: "Miami",
      contacts: [{
        contact_name: "Herman Martinez",
        contact_email: "example@email.com",
        contact_title: "Owner",
        contact_phone: "3055550000"
      }],
      country: "US",
      customer_vendor_account: "A-37622",
      ein: "12-3456789",
      email: "example@email.com",
      internal_reference_id: 123,
      location_code: "MIA123",
      mcc: "7777",
      name_1: "Herman's Coatings and Masonry",
      name_2: "<string>",
      payee_name_1: "<string>",
      payee_name_2: "<string>",
      payment_method: "managed",
      phone: "5555555555",
      remit_address_1: "123 Walnut Street",
      remit_address_2: "Suite 900",
      remit_city: "Miami",
      remit_country: "US",
      remit_state: "FL",
      remit_zip: "31113",
      state: "FL",
      vendor_status: 1,
      zip: "33139",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "vendor.add_vendor.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Vendor/single/8cfec329267",
      query_params: nil,
      expected: 1
    )
  end

  def test_vendor_delete_vendor_with_wiremock
    test_id = "vendor.delete_vendor.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.vendor.delete_vendor(
      id_vendor: 1,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "vendor.delete_vendor.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/Vendor/1",
      query_params: nil,
      expected: 1
    )
  end

  def test_vendor_edit_vendor_with_wiremock
    test_id = "vendor.edit_vendor.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.vendor.edit_vendor(
      id_vendor: 1,
      name_1: "Theodore's Janitorial",
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "vendor.edit_vendor.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "PUT",
      url_path: "/Vendor/1",
      query_params: nil,
      expected: 1
    )
  end

  def test_vendor_get_vendor_with_wiremock
    test_id = "vendor.get_vendor.0"

    require "payabli"
    client = Payabli::Client.new(base_url: WIREMOCK_BASE_URL, api_key: "<value>")
    client.vendor.get_vendor(
      id_vendor: 1,
      request_options: { base_url: WIREMOCK_BASE_URL,
                         additional_headers: {
                           "X-Test-Id" => "vendor.get_vendor.0"
                         } }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Vendor/1",
      query_params: nil,
      expected: 1
    )
  end
end
