# frozen_string_literal: true

module Payabli
  module CaseManagement
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Validates a bank account change for a paypoint without creating a case.
      # Runs the same checks the create endpoint runs, and returns blocking
      # conditions and warnings. Blocking conditions prevent creation; warnings
      # don't.
      #
      # Available to both Platform and Enterprise Partners.
      #
      # @param request_options [Hash]
      # @param params [Payabli::CaseManagement::Types::ValidateBankAccountChangeRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :paypoint_id
      #
      # @example
      #   client.case_management.validate_bank_account_change(
      #     paypoint_id: 3040,
      #     routing_number: "123456789",
      #     account_number: "987654321",
      #     account_type: "checking",
      #     bank_account_holder_type: "business",
      #     bank_account_function: "Deposits",
      #     services: {
      #       money_in: ["Ach"],
      #       money_out: ["Ach"]
      #     }
      #   )
      #
      # @return [Payabli::Types::PreCreationValidationResult]
      def validate_bank_account_change(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::CaseManagement::Types::ValidateBankAccountChangeRequest.new(params).to_h
        non_body_param_names = %w[paypointId]
        body = request_data.except(*non_body_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/cases/bank-account/#{URI.encode_uri_component(params[:paypoint_id].to_s)}/validate",
          headers: headers,
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PreCreationValidationResult.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Creates a bank-account-change case for a paypoint. The account and
      # routing numbers are validated and tokenized before the case is saved —
      # the raw numbers are never stored or returned. The account holder name is
      # taken from the paypoint's legal name. On success the case is created in
      # `Submitted` and asynchronous verification starts.
      #
      # Available to both Platform and Enterprise Partners.
      #
      # @param request_options [Hash]
      # @param params [Payabli::CaseManagement::Types::CreateBankAccountChangeCaseRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :paypoint_id
      #
      # @example
      #   client.case_management.create_bank_account_change(
      #     paypoint_id: 3040,
      #     nickname: "Main Settlement Account",
      #     bank_name: "First National Bank",
      #     routing_number: "123456789",
      #     account_number: "987654321",
      #     account_type: "checking",
      #     bank_account_holder_type: "business",
      #     bank_account_function: "Deposits",
      #     services: {
      #       money_in: ["Ach"],
      #       money_out: ["Ach"]
      #     },
      #     default: true
      #   )
      #
      # @return [Payabli::Types::CaseResponse]
      def create_bank_account_change(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::CaseManagement::Types::CreateBankAccountChangeCaseRequest.new(params).to_h
        non_body_param_names = %w[paypointId]
        body = request_data.except(*non_body_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/cases/bank-account/#{URI.encode_uri_component(params[:paypoint_id].to_s)}",
          headers: headers,
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::CaseResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Returns a case by its UUID, including its current state, parameters,
      # state history, verification metadata, and attachments.
      #
      # Available to both Platform and Enterprise Partners.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :uuid
      #
      # @example
      #   client.case_management.get_case(uuid: "9c2b7e14-3a5f-4d21-b8e0-1f6a4c9d2e70")
      #
      # @return [Payabli::Types::CaseResponse]
      def get_case(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/cases/#{URI.encode_uri_component(params[:uuid].to_s)}",
          headers: headers,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::CaseResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Lists cases for an organization, climbing the platform org hierarchy.
      # Supports pagination and sorting through query parameters, and filtering
      # through repeatable `parameters[field(op)]=value` query parameters (for
      # example `parameters[state(in)]=Assigned|PendingReview`). Filterable
      # fields include `state`, `caseType`, `paypointId`, `createdAt`,
      # `updatedAt`, `scheduleFor`, and `createdBy`.
      #
      # Available to both Platform and Enterprise Partners.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :organization_id
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [String, nil] :sort_by
      #
      # @example
      #   client.case_management.list_cases(
      #     organization_id: 123,
      #     from_record: 0,
      #     limit_record: 20
      #   )
      #
      # @return [Payabli::Types::CaseListResponse]
      def list_cases(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["sortBy"] = params[:sort_by] if params.key?(:sort_by)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/cases/organization/#{URI.encode_uri_component(params[:organization_id].to_s)}",
          headers: headers,
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::CaseListResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Lists the notes on a case, ordered oldest to newest. Cursor-paginated.
      #
      # Available to both Platform and Enterprise Partners.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :case_uuid
      # @option params [Integer, nil] :limit
      # @option params [String, nil] :cursor
      #
      # @example
      #   client.case_management.list_messages(case_uuid: "9c2b7e14-3a5f-4d21-b8e0-1f6a4c9d2e70")
      #
      # @return [Payabli::Types::MessagePage]
      def list_messages(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["limit"] = params[:limit] if params.key?(:limit)
        query_params["cursor"] = params[:cursor] if params.key?(:cursor)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/cases/#{URI.encode_uri_component(params[:case_uuid].to_s)}/messages",
          headers: headers,
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::MessagePage.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Adds a note to a case.
      #
      # Available to both Platform and Enterprise Partners.
      #
      # This endpoint is in development and not yet available for API use. To
      # add a note for now, use Case Management in the
      # [Payabli Portal](/guides/pay-ops-portal-bank-account-changes-manage).
      # To read existing notes on a case, use
      # [List case notes](/developers/api-reference/caseManagement/list-case-notes).
      #
      # @param request_options [Hash]
      # @param params [Payabli::CaseManagement::Types::PostCaseMessageRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :case_uuid
      #
      # @example
      #   client.case_management.post_message(
      #     case_uuid: "9c2b7e14-3a5f-4d21-b8e0-1f6a4c9d2e70",
      #     content: "Reviewed supporting documents; account ownership confirmed."
      #   )
      #
      # @return [Payabli::Types::PostedMessage]
      def post_message(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::CaseManagement::Types::PostCaseMessageRequest.new(params).to_h
        non_body_param_names = %w[caseUuid]
        body = request_data.except(*non_body_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/cases/#{URI.encode_uri_component(params[:case_uuid].to_s)}/messages",
          headers: headers,
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PostedMessage.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Lists the review actions currently available on a case. The list is
      # empty when no user action is available (for example while the case is
      # mid-automation).
      #
      # Available to both Platform and Enterprise Partners, though only
      # Enterprise Partners can fire the returned actions.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :uuid
      #
      # @example
      #   client.case_management.list_transitions(uuid: "9c2b7e14-3a5f-4d21-b8e0-1f6a4c9d2e70")
      #
      # @return [Payabli::Types::AvailableTransitionsResponse]
      def list_transitions(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/cases/#{URI.encode_uri_component(params[:uuid].to_s)}/transitions",
          headers: headers,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::AvailableTransitionsResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Fires a review action on a case, such as `Approve`, `Deny`, `Escalate`,
      # or `RequestReview`. Assigning a case uses the dedicated assign endpoint,
      # not this one. Firing an action that isn't valid for the case's current
      # state returns `409`.
      #
      # Available to Enterprise Partners only.
      #
      # @param request_options [Hash]
      # @param params [Payabli::CaseManagement::Types::TransitionCaseRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :uuid
      #
      # @example
      #   client.case_management.transition(
      #     uuid: "9c2b7e14-3a5f-4d21-b8e0-1f6a4c9d2e70",
      #     trigger: "Approve",
      #     reason: "Account ownership confirmed with the merchant by phone."
      #   )
      #
      # @return [Payabli::Types::CaseResponse]
      def transition(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::CaseManagement::Types::TransitionCaseRequest.new(params).to_h
        non_body_param_names = %w[uuid]
        body = request_data.except(*non_body_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/cases/#{URI.encode_uri_component(params[:uuid].to_s)}/transitions",
          headers: headers,
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::CaseResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Assigns a case to a reviewer.
      #
      # Available to Enterprise Partners only.
      #
      # @param request_options [Hash]
      # @param params [Payabli::CaseManagement::Types::AssignCaseRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :uuid
      #
      # @example
      #   client.case_management.assign_case(
      #     uuid: "9c2b7e14-3a5f-4d21-b8e0-1f6a4c9d2e70",
      #     assignee_id: 4238,
      #     reason: "Routing to the risk team for review."
      #   )
      #
      # @return [Payabli::Types::CaseResponse]
      def assign_case(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::CaseManagement::Types::AssignCaseRequest.new(params).to_h
        non_body_param_names = %w[uuid]
        body = request_data.except(*non_body_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/cases/#{URI.encode_uri_component(params[:uuid].to_s)}/assign",
          headers: headers,
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::CaseResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Lists the files attached to a case.
      #
      # Available to both Platform and Enterprise Partners.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :case_uuid
      #
      # @example
      #   client.case_management.list_attachments(case_uuid: "9c2b7e14-3a5f-4d21-b8e0-1f6a4c9d2e70")
      #
      # @return [Array[Payabli::Types::AttachmentResponse]]
      def list_attachments(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/cases/#{URI.encode_uri_component(params[:case_uuid].to_s)}/attachments",
          headers: headers,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # Uploads a file to a case as multipart form data. The maximum size is
      # 25 MiB, and the content type must be an allowed type such as PDF, PNG,
      # JPEG, CSV, XLSX, DOCX, or plain text.
      #
      # Available to both Platform and Enterprise Partners.
      #
      # @param request_options [Hash]
      # @param params [void]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :case_uuid
      #
      # @example
      #   client.case_management.upload_attachment(case_uuid: "caseUuid")
      #
      # @return [Payabli::Types::AttachmentResponse]
      def upload_attachment(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        body = Internal::Multipart::FormData.new

        body.add_part(params[:file].to_form_data_part(name: "file")) if params[:file]

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::Multipart::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/cases/#{URI.encode_uri_component(params[:case_uuid].to_s)}/attachments",
          headers: headers,
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::AttachmentResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Streams the file content of an attachment.
      #
      # Available to both Platform and Enterprise Partners.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :case_uuid
      # @option params [String] :attachment_id
      #
      # @example
      #   client.case_management.get_attachment(
      #     case_uuid: "caseUuid",
      #     attachment_id: "attachmentId"
      #   )
      #
      # @return [untyped]
      def get_attachment(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/cases/#{URI.encode_uri_component(params[:case_uuid].to_s)}/attachments/#{URI.encode_uri_component(params[:attachment_id].to_s)}",
          headers: headers,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # Deletes an attachment from a case.
      #
      # Available to both Platform and Enterprise Partners.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :case_uuid
      # @option params [String] :attachment_id
      #
      # @example
      #   client.case_management.delete_attachment(
      #     case_uuid: "caseUuid",
      #     attachment_id: "attachmentId"
      #   )
      #
      # @return [untyped]
      def delete_attachment(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "v2/cases/#{URI.encode_uri_component(params[:case_uuid].to_s)}/attachments/#{URI.encode_uri_component(params[:attachment_id].to_s)}",
          headers: headers,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end
    end
  end
end
