# frozen_string_literal: true

module Payabli
  module Applications
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Lists boarding applications with pagination.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer, nil] :page
      # @option params [Integer, nil] :limit
      #
      # @example
      #   client.applications.list_applications
      #
      # @return [Payabli::Types::ListApplicationsEnvelope]
      def list_applications(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["page"] = params[:page] if params.key?(:page)
        query_params["limit"] = params[:limit] if params.key?(:limit)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/requests",
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
          Payabli::Types::ListApplicationsEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Creates a boarding application for a business. The business must
      # already have a paypoint. New applications start in `draft`.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Applications::Types::CreateApplicationRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.applications.create_application(
      #     business_reference: "019fed1a-3d6e-75d3-a81e-cba3874b0a55",
      #     external_id: "APP-2025-0417",
      #     tags: ["priority"]
      #   )
      #
      # @return [Payabli::Types::ApplicationEnvelope]
      def create_application(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/requests",
          headers: headers,
          body: Payabli::Applications::Types::CreateApplicationRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::ApplicationEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a boarding application by reference.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :requests_reference
      #
      # @example
      #   client.applications.get_application(requests_reference: "3f3caa7b-bdfe-4bf1-814b-30d54859247c")
      #
      # @return [Payabli::Types::ApplicationEnvelope]
      def get_application(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/requests/#{URI.encode_uri_component(params[:requests_reference].to_s)}",
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
          Payabli::Types::ApplicationEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Applies a partial update to a boarding application. Send only the fields you want to change.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Applications::Types::UpdateApplicationRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :requests_reference
      #
      # @example
      #   client.applications.update_application(
      #     requests_reference: "3f3caa7b-bdfe-4bf1-814b-30d54859247c",
      #     external_id: "APP-2025-0417-REV2",
      #     tags: %w[priority expedited]
      #   )
      #
      # @return [Payabli::Types::ApplicationEnvelope]
      def update_application(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::Applications::Types::UpdateApplicationRequest.new(params).to_h
        non_body_param_names = %w[requestsReference]
        body = request_data.except(*non_body_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "v2/requests/#{URI.encode_uri_component(params[:requests_reference].to_s)}",
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
          Payabli::Types::ApplicationEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Checks whether the records linked to an application (the business, its people, and its payment methods) include
      # everything the application's requested services need. The response lists any missing or invalid fields by
      # section. Validation doesn't change the application, and it doesn't return a validation token. The request has no
      # body.
      #
      # One owner on the application must be the signer, flagged with `isSigner` on their business link. If no one is
      # flagged, the `people` section returns a `missingFields` entry with `field` set to `people.isSigner`, `label` set
      # to `Signer`, and `reason` set to `required — choose the person who signs the application`. The signer rule isn't
      # reported when the application has no people.
      #
      # The `people` section also checks ownership. At least one person must be the primary controller, flagged with
      # `isPrimaryController`. If no one is, the entry has `field` set to `people.isPrimaryController`, `label` set to
      # `Primary Controller`, and `reason` set to `required — at least one principal must be designated`. Unless the
      # business's `legalStructure` is `government` or `non-profit`, at least one owner must have an
      # `ownershipPercentage` of 25 or more. If no one does, the entry has `field` set to `people.ownershipPercentage`,
      # `label` set to `Qualifying Owner`, and `reason` set to `at least one principal must have an ownership stake of
      # 25% or more`.
      #
      # Validation also reports required documents that have nothing uploaded. See [List application document
      # requirements](/developers/api-reference/applications/list-application-document-requirements). The bank statement
      # requirement appears in the `business` section, with `field` set to `documents.bankStatement`. A person document
      # appears in the `people` section, with `field` set to `people.{personReference}.` followed by the requirement's
      # `fieldPath`, such as `people.01a0014d-ce1a-7110-9bac-c4c59647a88d.person.documents.w9`. Submit doesn't enforce
      # document requirements.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :requests_reference
      #
      # @example
      #   client.applications.validate_application(requests_reference: "3f3caa7b-bdfe-4bf1-814b-30d54859247c")
      #
      # @return [Payabli::Types::ValidationResultEnvelope]
      def validate_application(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/requests/#{URI.encode_uri_component(params[:requests_reference].to_s)}/validate",
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
          Payabli::Types::ValidationResultEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Submits a draft application for review. Your integration (the applicant) calls this after the business, its
      # people, payment methods, and services are in place. Verification then runs automatically.
      #
      # The application must have a signer: an owner flagged with `isSigner` on their business link, or one you name in
      # `signer.personReference`. Payabli records the signer's identity from their person record and business link, so
      # update those before you submit. The `signer` object carries the signature details.
      #
      # If the application has no signer, the request fails with `422` and the error `SIGNER_REQUIRED`. If
      # `signer.personReference` names a person who isn't an owner, the request fails with `422` and the error
      # `SIGNER_NOT_OWNER`. If the application isn't a draft, the request fails with `409` and the error `BIZ_004`,
      # before any signer check. If `signer.reportedSignerIp` isn't a single valid IPv4 or IPv6 address, the request
      # fails with `400` and the error `VALIDATION_ERROR`, and the application isn't submitted.
      #
      # Submit doesn't check every rule that [validate](/developers/api-reference/applications/validate-an-application)
      # reports, such as the primary controller and ownership rules. Validate the application and resolve its missing
      # fields before you submit.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Applications::Types::SubmitApplicationRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :requests_reference
      #
      # @example
      #   client.applications.submit_application(
      #     requests_reference: "3f3caa7b-bdfe-4bf1-814b-30d54859247c",
      #     signer: {
      #       person_reference: "01a0014d-ce1a-7110-9bac-c4c59647a88d",
      #       signature: "Marcus J Delgado",
      #       signature_type: "type",
      #       acceptance: true,
      #       pci_attestation: true,
      #       reported_signer_ip: "203.0.113.7"
      #     }
      #   )
      #
      # @return [Payabli::Types::TransitionResultEnvelope]
      def submit_application(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::Applications::Types::SubmitApplicationRequest.new(params).to_h
        non_body_param_names = %w[requestsReference]
        body = request_data.except(*non_body_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/requests/#{URI.encode_uri_component(params[:requests_reference].to_s)}/submit",
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
          Payabli::Types::TransitionResultEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Marks the documents that Payabli requested during review as provided, when the application is in
      # `pendingdocuments`. It returns the application to review. The request has no body.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :requests_reference
      #
      # @example
      #   client.applications.provide_documents(requests_reference: "3f3caa7b-bdfe-4bf1-814b-30d54859247c")
      #
      # @return [Payabli::Types::TransitionResultEnvelope]
      def provide_documents(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/requests/#{URI.encode_uri_component(params[:requests_reference].to_s)}/provide-documents",
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
          Payabli::Types::TransitionResultEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Marks the information that Payabli requested during review as provided, when the application is in
      # `pendingresponse`. It returns the application to review. The request has no body.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :requests_reference
      #
      # @example
      #   client.applications.provide_response(requests_reference: "3f3caa7b-bdfe-4bf1-814b-30d54859247c")
      #
      # @return [Payabli::Types::TransitionResultEnvelope]
      def provide_response(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/requests/#{URI.encode_uri_component(params[:requests_reference].to_s)}/provide-response",
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
          Payabli::Types::TransitionResultEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Withdraws a boarding application. The response returns the application's
      # new status and the actions now allowed on it.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Applications::Types::WithdrawApplicationRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :requests_reference
      #
      # @example
      #   client.applications.withdraw_application(
      #     requests_reference: "3f3caa7b-bdfe-4bf1-814b-30d54859247c",
      #     reason: "Duplicate application"
      #   )
      #
      # @return [Payabli::Types::TransitionResultEnvelope]
      def withdraw_application(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::Applications::Types::WithdrawApplicationRequest.new(params).to_h
        non_body_param_names = %w[requestsReference]
        body = request_data.except(*non_body_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/requests/#{URI.encode_uri_component(params[:requests_reference].to_s)}/withdraw",
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
          Payabli::Types::TransitionResultEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves the status transition history of a boarding application, oldest first. History records changes only.
      # An approved application that fails enablement the same way on every attempt doesn't add entries, so use
      # [enablement](/developers/api-reference/applications/get-application-enablement-progress) to follow that
      # progress.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :requests_reference
      #
      # @example
      #   client.applications.get_application_history(requests_reference: "3f3caa7b-bdfe-4bf1-814b-30d54859247c")
      #
      # @return [Payabli::Types::StatusHistoryEnvelope]
      def get_application_history(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/requests/#{URI.encode_uri_component(params[:requests_reference].to_s)}/history",
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
          Payabli::Types::StatusHistoryEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves the progress of setting up an approved application's services with their processors. An application's
      # status stays `approved` or `autoapproved` while this runs, and it moves to `activated` after every requested
      # service is set up. Use this endpoint to see why an approved merchant isn't live yet.
      #
      # Enablement doesn't send webhooks, so poll this endpoint to follow it. Until enablement starts, `state` and the
      # other progress fields are `null`, and `services` is empty. That includes applications that are in `draft`,
      # withdrawn, or in `error`.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :requests_reference
      #
      # @example
      #   client.applications.get_application_enablement(requests_reference: "3f3caa7b-bdfe-4bf1-814b-30d54859247c")
      #
      # @return [Payabli::Types::EnablementEnvelope]
      def get_application_enablement(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/requests/#{URI.encode_uri_component(params[:requests_reference].to_s)}/enablement",
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
          Payabli::Types::EnablementEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Lists the documents an application asks for, from its template and from Payabli business rules. For example, a
      # business with an annual revenue of $1,000,000 or more needs bank statements. Each requirement gives the
      # `fieldPath` and `subject` to send when you upload, the formats it accepts, how many documents it takes, and how
      # many are uploaded so far.
      #
      # A person requirement appears once for each owner of the business, with that owner's `personReference`. The list
      # is empty when the application asks for no documents.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :requests_reference
      #
      # @example
      #   client.applications.list_application_document_requirements(requests_reference: "3f3caa7b-bdfe-4bf1-814b-30d54859247c")
      #
      # @return [Payabli::Types::DocumentRequirementListEnvelope]
      def list_application_document_requirements(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/requests/#{URI.encode_uri_component(params[:requests_reference].to_s)}/documents/requirements",
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
          Payabli::Types::DocumentRequirementListEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Lists the documents uploaded to an application. The list is empty when none are uploaded.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :requests_reference
      #
      # @example
      #   client.applications.list_application_documents(requests_reference: "3f3caa7b-bdfe-4bf1-814b-30d54859247c")
      #
      # @return [Payabli::Types::ApplicationDocumentListEnvelope]
      def list_application_documents(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/requests/#{URI.encode_uri_component(params[:requests_reference].to_s)}/documents",
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
          Payabli::Types::ApplicationDocumentListEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Uploads one document to an application as multipart form data. [List the application's document
      # requirements](/developers/api-reference/applications/list-application-document-requirements) first. Send the
      # requirement's `fieldPath`, one of its `subjectTypes` as `subject`, and, for a person requirement, its
      # `personReference`.
      #
      # The file can be up to 10 MB, in a format the requirement accepts. Payabli checks the file's content, not only
      # its name. Each requirement takes up to `maxUploads` documents.
      #
      # Uploading doesn't change the application's status. When underwriting requests documents, upload them, then call
      # [provide documents](/developers/api-reference/applications/provide-application-documents) to return the
      # application to review.
      #
      # @param request_options [Hash]
      # @param params [void]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :requests_reference
      #
      # @example
      #   client.applications.upload_application_document(requests_reference: "3f3caa7b-bdfe-4bf1-814b-30d54859247c")
      #
      # @return [Payabli::Types::ApplicationDocumentEnvelope]
      def upload_application_document(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        body = Internal::Multipart::FormData.new

        body.add_part(params[:file].to_form_data_part(name: "file")) if params[:file]
        if params[:field_path]
          body.add(
            name: "fieldPath",
            value: params[:field_path]
          )
        end
        if params[:subject]
          body.add(
            name: "subject",
            value: params[:subject]
          )
        end
        if params[:person_reference]
          body.add(
            name: "personReference",
            value: params[:person_reference]
          )
        end

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::Multipart::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/requests/#{URI.encode_uri_component(params[:requests_reference].to_s)}/documents",
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
          Payabli::Types::ApplicationDocumentEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Removes a document you uploaded from an application. Deleting doesn't change the application's status. A deleted
      # document no longer counts toward its requirement, so you can upload a replacement. Deleting a document that's
      # already deleted returns `404`.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :requests_reference
      # @option params [String] :document_reference
      #
      # @example
      #   client.applications.delete_application_document(
      #     requests_reference: "3f3caa7b-bdfe-4bf1-814b-30d54859247c",
      #     document_reference: "019ff1d7-6e14-7c8b-a2f5-91d3b7e04c62"
      #   )
      #
      # @return [untyped]
      def delete_application_document(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "v2/requests/#{URI.encode_uri_component(params[:requests_reference].to_s)}/documents/#{URI.encode_uri_component(params[:document_reference].to_s)}",
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
