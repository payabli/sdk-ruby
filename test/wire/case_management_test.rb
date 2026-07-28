# frozen_string_literal: true

require_relative "wiremock_test_case"

class CaseManagementWireTest < WireMockTestCase
  def setup
    super

    @client = Payabli::Client.new(
      client_id: "test-client-id",
      client_secret: "test-client-secret",
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_case_management_validate_bank_account_change_with_wiremock
    test_id = "case_management.validate_bank_account_change.0"

    @client.case_management.validate_bank_account_change(
      paypoint_id: 3040,
      routing_number: "123456789",
      account_number: "987654321",
      account_type: "checking",
      bank_account_holder_type: "business",
      bank_account_function: "Deposits",
      services: {
        money_in: ["Ach"],
        money_out: ["Ach"]
      },
      request_options: {
        additional_headers: {
          "X-Test-Id" => "case_management.validate_bank_account_change.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/cases/bank-account/3040/validate",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/cases/bank-account/3040/validate",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_case_management_create_bank_account_change_with_wiremock
    test_id = "case_management.create_bank_account_change.0"

    @client.case_management.create_bank_account_change(
      paypoint_id: 3040,
      nickname: "Main Settlement Account",
      bank_name: "First National Bank",
      routing_number: "123456789",
      account_number: "987654321",
      account_type: "checking",
      bank_account_holder_type: "business",
      bank_account_function: "Deposits",
      services: {
        money_in: ["Ach"],
        money_out: ["Ach"]
      },
      default: true,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "case_management.create_bank_account_change.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/cases/bank-account/3040",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/cases/bank-account/3040",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_case_management_get_case_with_wiremock
    test_id = "case_management.get_case.0"

    @client.case_management.get_case(
      uuid: "9c2b7e14-3a5f-4d21-b8e0-1f6a4c9d2e70",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "case_management.get_case.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/cases/9c2b7e14-3a5f-4d21-b8e0-1f6a4c9d2e70",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/cases/9c2b7e14-3a5f-4d21-b8e0-1f6a4c9d2e70",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_case_management_list_cases_with_wiremock
    test_id = "case_management.list_cases.0"

    @client.case_management.list_cases(
      organization_id: 123,
      from_record: 0,
      limit_record: 20,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "case_management.list_cases.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/cases/organization/123",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/cases/organization/123",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_case_management_list_messages_with_wiremock
    test_id = "case_management.list_messages.0"

    @client.case_management.list_messages(
      case_uuid: "9c2b7e14-3a5f-4d21-b8e0-1f6a4c9d2e70",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "case_management.list_messages.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/cases/9c2b7e14-3a5f-4d21-b8e0-1f6a4c9d2e70/messages",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/cases/9c2b7e14-3a5f-4d21-b8e0-1f6a4c9d2e70/messages",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_case_management_post_message_with_wiremock
    test_id = "case_management.post_message.0"

    @client.case_management.post_message(
      case_uuid: "9c2b7e14-3a5f-4d21-b8e0-1f6a4c9d2e70",
      content: "Reviewed supporting documents; account ownership confirmed.",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "case_management.post_message.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/cases/9c2b7e14-3a5f-4d21-b8e0-1f6a4c9d2e70/messages",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/cases/9c2b7e14-3a5f-4d21-b8e0-1f6a4c9d2e70/messages",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_case_management_list_transitions_with_wiremock
    test_id = "case_management.list_transitions.0"

    @client.case_management.list_transitions(
      uuid: "9c2b7e14-3a5f-4d21-b8e0-1f6a4c9d2e70",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "case_management.list_transitions.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/cases/9c2b7e14-3a5f-4d21-b8e0-1f6a4c9d2e70/transitions",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/cases/9c2b7e14-3a5f-4d21-b8e0-1f6a4c9d2e70/transitions",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_case_management_transition_with_wiremock
    test_id = "case_management.transition.0"

    @client.case_management.transition(
      uuid: "9c2b7e14-3a5f-4d21-b8e0-1f6a4c9d2e70",
      trigger: "Approve",
      reason: "Account ownership confirmed with the merchant by phone.",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "case_management.transition.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/cases/9c2b7e14-3a5f-4d21-b8e0-1f6a4c9d2e70/transitions",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/cases/9c2b7e14-3a5f-4d21-b8e0-1f6a4c9d2e70/transitions",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_case_management_assign_case_with_wiremock
    test_id = "case_management.assign_case.0"

    @client.case_management.assign_case(
      uuid: "9c2b7e14-3a5f-4d21-b8e0-1f6a4c9d2e70",
      assignee_id: 4238,
      reason: "Routing to the risk team for review.",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "case_management.assign_case.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/cases/9c2b7e14-3a5f-4d21-b8e0-1f6a4c9d2e70/assign",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/cases/9c2b7e14-3a5f-4d21-b8e0-1f6a4c9d2e70/assign",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_case_management_list_attachments_with_wiremock
    test_id = "case_management.list_attachments.0"

    @client.case_management.list_attachments(
      case_uuid: "9c2b7e14-3a5f-4d21-b8e0-1f6a4c9d2e70",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "case_management.list_attachments.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/cases/9c2b7e14-3a5f-4d21-b8e0-1f6a4c9d2e70/attachments",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/cases/9c2b7e14-3a5f-4d21-b8e0-1f6a4c9d2e70/attachments",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_case_management_upload_attachment_with_wiremock
    test_id = "case_management.upload_attachment.0"

    @client.case_management.upload_attachment(
      case_uuid: "caseUuid",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "case_management.upload_attachment.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/cases/caseUuid/attachments",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/v2/cases/caseUuid/attachments",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_case_management_get_attachment_with_wiremock
    test_id = "case_management.get_attachment.0"

    @client.case_management.get_attachment(
      case_uuid: "caseUuid",
      attachment_id: "attachmentId",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "case_management.get_attachment.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/cases/caseUuid/attachments/attachmentId",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/v2/cases/caseUuid/attachments/attachmentId",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_case_management_delete_attachment_with_wiremock
    test_id = "case_management.delete_attachment.0"

    @client.case_management.delete_attachment(
      case_uuid: "caseUuid",
      attachment_id: "attachmentId",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "case_management.delete_attachment.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/v2/cases/caseUuid/attachments/attachmentId",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "DELETE",
      url_path: "/v2/cases/caseUuid/attachments/attachmentId",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end
end
