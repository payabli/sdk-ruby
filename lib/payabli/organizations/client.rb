# frozen_string_literal: true

module Payabli
  module Organizations
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Lists organizations with optional filtering and pagination. Only
      # organizations are returned. Other paypoints never appear in this list.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :business_reference
      # @option params [String, nil] :status
      # @option params [String, nil] :search
      # @option params [Integer, nil] :limit
      # @option params [Integer, nil] :page
      #
      # @example
      #   client.organizations.list_organizations(business_reference: "6e2b9d14-7a3c-4f58-b1e6-0c9d3a5f8e27")
      #
      # @return [Payabli::Types::ListPaypointsEnvelope]
      def list_organizations(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["businessReference"] = params[:business_reference] if params.key?(:business_reference)
        query_params["status"] = params[:status] if params.key?(:status)
        query_params["search"] = params[:search] if params.key?(:search)
        query_params["limit"] = params[:limit] if params.key?(:limit)
        query_params["page"] = params[:page] if params.key?(:page)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/organizations",
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
          Payabli::Types::ListPaypointsEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Creates an organization. Provide exactly one of `business` (to create
      # the business inline, recommended) or `businessReference` (an existing
      # business). In intelligent boarding, an organization is a kind of paypoint, so the
      # request takes the paypoint create fields except `paypointType`. Payabli
      # sets the organization type itself. An organization isn't underwritten,
      # so only the fields needed to create the records are required. New
      # organizations start in `pending`. If you don't set
      # `parentPaypointReference`, the organization nests under the
      # organization your credential belongs to. Returns `409` if an
      # organization with the same `externalId` already exists.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Organizations::Types::CreateOrganizationOrganizationsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.organizations.create_organization(
      #     doing_business_as: "PropertyManager Pro",
      #     description: "Property management software partner",
      #     website: "https://example.com",
      #     customer_service_phone: "3055551212",
      #     customer_service_email: "support@example.com",
      #     timezone: "America/New_York",
      #     external_id: "pmp-org-001",
      #     business: {
      #       legal_name: "PropertyManager Pro LLC",
      #       legal_structure: "llc",
      #       external_id: "pmp-biz-001"
      #     }
      #   )
      #
      # @return [Payabli::Types::PaypointCreatedEnvelope]
      def create_organization(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/organizations",
          headers: headers,
          body: Payabli::Organizations::Types::CreateOrganizationOrganizationsRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PaypointCreatedEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves an organization by reference.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :organization_reference
      #
      # @example
      #   client.organizations.get_organization(organization_reference: "a8806f02-23b3-4f6d-bba3-42e1b94326ea")
      #
      # @return [Payabli::Types::PaypointDetailEnvelope]
      def get_organization(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/organizations/#{URI.encode_uri_component(params[:organization_reference].to_s)}",
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
          Payabli::Types::PaypointDetailEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Applies a partial update to an organization. Send only the fields you want to change. You can't change an
      # organization's type. If you send `paypointType`, the request ignores it and doesn't return an error.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Organizations::Types::UpdateOrganizationRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :organization_reference
      #
      # @example
      #   client.organizations.update_organization(
      #     organization_reference: "a8806f02-23b3-4f6d-bba3-42e1b94326ea",
      #     description: "Updated description"
      #   )
      #
      # @return [Payabli::Types::PaypointUpdatedEnvelope]
      def update_organization(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::Organizations::Types::UpdateOrganizationRequest.new(params).to_h
        non_body_param_names = %w[organizationReference]
        body = request_data.except(*non_body_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "v2/organizations/#{URI.encode_uri_component(params[:organization_reference].to_s)}",
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
          Payabli::Types::PaypointUpdatedEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
