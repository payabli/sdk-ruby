# frozen_string_literal: true

require_relative "wiremock_test_case"

class ApplicationsWireTest < WireMockTestCase
  def setup
    super

    @client = Payabli::Client.new(
      client_id: "test-client-id",
      client_secret: "test-client-secret",
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_applications_list_applications_with_wiremock
    test_id = "applications.list_applications.0"

    @client.applications.list_applications(request_options: {
      additional_headers: {
        "X-Test-Id" => "applications.list_applications.0"
      }
    })

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/requests",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/requests",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_applications_create_application_with_wiremock
    test_id = "applications.create_application.0"

    @client.applications.create_application(
      business_reference: "019fed1a-3d6e-75d3-a81e-cba3874b0a55",
      external_id: "APP-2025-0417",
      tags: ["priority"],
      request_options: {
        additional_headers: {
          "X-Test-Id" => "applications.create_application.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/requests",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/requests",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_applications_get_application_with_wiremock
    test_id = "applications.get_application.0"

    @client.applications.get_application(
      requests_reference: "3f3caa7b-bdfe-4bf1-814b-30d54859247c",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "applications.get_application.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/requests/3f3caa7b-bdfe-4bf1-814b-30d54859247c",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/requests/3f3caa7b-bdfe-4bf1-814b-30d54859247c",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_applications_update_application_with_wiremock
    test_id = "applications.update_application.0"

    @client.applications.update_application(
      requests_reference: "3f3caa7b-bdfe-4bf1-814b-30d54859247c",
      external_id: "APP-2025-0417-REV2",
      tags: %w[priority expedited],
      request_options: {
        additional_headers: {
          "X-Test-Id" => "applications.update_application.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "PATCH",
      url_path: "/v2/requests/3f3caa7b-bdfe-4bf1-814b-30d54859247c",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "PATCH",
      url_path: "/v2/requests/3f3caa7b-bdfe-4bf1-814b-30d54859247c",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_applications_validate_application_with_wiremock
    test_id = "applications.validate_application.0"

    @client.applications.validate_application(
      requests_reference: "3f3caa7b-bdfe-4bf1-814b-30d54859247c",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "applications.validate_application.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/requests/3f3caa7b-bdfe-4bf1-814b-30d54859247c/validate",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/requests/3f3caa7b-bdfe-4bf1-814b-30d54859247c/validate",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_applications_submit_application_with_wiremock
    test_id = "applications.submit_application.0"

    @client.applications.submit_application(
      requests_reference: "3f3caa7b-bdfe-4bf1-814b-30d54859247c",
      signer: {
        person_reference: "01a0014d-ce1a-7110-9bac-c4c59647a88d",
        signature: "Marcus J Delgado",
        signature_type: "type",
        acceptance: true,
        pci_attestation: true,
        reported_signer_ip: "203.0.113.7"
      },
      request_options: {
        additional_headers: {
          "X-Test-Id" => "applications.submit_application.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/requests/3f3caa7b-bdfe-4bf1-814b-30d54859247c/submit",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/requests/3f3caa7b-bdfe-4bf1-814b-30d54859247c/submit",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_applications_provide_documents_with_wiremock
    test_id = "applications.provide_documents.0"

    @client.applications.provide_documents(
      requests_reference: "3f3caa7b-bdfe-4bf1-814b-30d54859247c",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "applications.provide_documents.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/requests/3f3caa7b-bdfe-4bf1-814b-30d54859247c/provide-documents",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/requests/3f3caa7b-bdfe-4bf1-814b-30d54859247c/provide-documents",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_applications_provide_response_with_wiremock
    test_id = "applications.provide_response.0"

    @client.applications.provide_response(
      requests_reference: "3f3caa7b-bdfe-4bf1-814b-30d54859247c",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "applications.provide_response.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/requests/3f3caa7b-bdfe-4bf1-814b-30d54859247c/provide-response",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/requests/3f3caa7b-bdfe-4bf1-814b-30d54859247c/provide-response",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_applications_withdraw_application_with_wiremock
    test_id = "applications.withdraw_application.0"

    @client.applications.withdraw_application(
      requests_reference: "3f3caa7b-bdfe-4bf1-814b-30d54859247c",
      reason: "Duplicate application",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "applications.withdraw_application.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/requests/3f3caa7b-bdfe-4bf1-814b-30d54859247c/withdraw",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/requests/3f3caa7b-bdfe-4bf1-814b-30d54859247c/withdraw",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_applications_get_application_history_with_wiremock
    test_id = "applications.get_application_history.0"

    @client.applications.get_application_history(
      requests_reference: "3f3caa7b-bdfe-4bf1-814b-30d54859247c",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "applications.get_application_history.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/requests/3f3caa7b-bdfe-4bf1-814b-30d54859247c/history",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/requests/3f3caa7b-bdfe-4bf1-814b-30d54859247c/history",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_applications_get_application_enablement_with_wiremock
    test_id = "applications.get_application_enablement.0"

    @client.applications.get_application_enablement(
      requests_reference: "3f3caa7b-bdfe-4bf1-814b-30d54859247c",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "applications.get_application_enablement.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/requests/3f3caa7b-bdfe-4bf1-814b-30d54859247c/enablement",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/requests/3f3caa7b-bdfe-4bf1-814b-30d54859247c/enablement",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_applications_list_application_document_requirements_with_wiremock
    test_id = "applications.list_application_document_requirements.0"

    @client.applications.list_application_document_requirements(
      requests_reference: "3f3caa7b-bdfe-4bf1-814b-30d54859247c",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "applications.list_application_document_requirements.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/requests/3f3caa7b-bdfe-4bf1-814b-30d54859247c/documents/requirements",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/requests/3f3caa7b-bdfe-4bf1-814b-30d54859247c/documents/requirements",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_applications_list_application_documents_with_wiremock
    test_id = "applications.list_application_documents.0"

    @client.applications.list_application_documents(
      requests_reference: "3f3caa7b-bdfe-4bf1-814b-30d54859247c",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "applications.list_application_documents.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/requests/3f3caa7b-bdfe-4bf1-814b-30d54859247c/documents",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/requests/3f3caa7b-bdfe-4bf1-814b-30d54859247c/documents",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_applications_upload_application_document_with_wiremock
    test_id = "applications.upload_application_document.0"

    @client.applications.upload_application_document(
      requests_reference: "3f3caa7b-bdfe-4bf1-814b-30d54859247c",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "applications.upload_application_document.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/requests/3f3caa7b-bdfe-4bf1-814b-30d54859247c/documents",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/requests/3f3caa7b-bdfe-4bf1-814b-30d54859247c/documents",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_applications_delete_application_document_with_wiremock
    test_id = "applications.delete_application_document.0"

    @client.applications.delete_application_document(
      requests_reference: "3f3caa7b-bdfe-4bf1-814b-30d54859247c",
      document_reference: "019ff1d7-6e14-7c8b-a2f5-91d3b7e04c62",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "applications.delete_application_document.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/v2/requests/3f3caa7b-bdfe-4bf1-814b-30d54859247c/documents/019ff1d7-6e14-7c8b-a2f5-91d3b7e04c62",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "DELETE",
      url_path: "/v2/requests/3f3caa7b-bdfe-4bf1-814b-30d54859247c/documents/019ff1d7-6e14-7c8b-a2f5-91d3b7e04c62",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end
end
