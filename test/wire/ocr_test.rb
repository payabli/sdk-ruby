# frozen_string_literal: true

require_relative "wiremock_test_case"

class OcrWireTest < WireMockTestCase
  def setup
    super

    @client = Payabli::Client.new(
      client_id: "test-client-id",
      client_secret: "test-client-secret",
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_ocr_ocr_document_form_with_wiremock
    test_id = "ocr.ocr_document_form.0"

    @client.ocr.ocr_document_form(
      type_result: "typeResult",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "ocr.ocr_document_form.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Import/ocrDocumentForm/typeResult",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/Import/ocrDocumentForm/typeResult",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_ocr_ocr_document_json_with_wiremock
    test_id = "ocr.ocr_document_json.0"

    @client.ocr.ocr_document_json(
      type_result: "typeResult",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "ocr.ocr_document_json.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/Import/ocrDocumentJson/typeResult",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/Import/ocrDocumentJson/typeResult",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end
end
