# frozen_string_literal: true

module Payabli
  module Billing
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Returns every billing profile that belongs to an organization. This is
      # the data behind the Profile Library table in the Payabli Portal.
      #
      # Requires a token with the `billing_profile_read` permission; a token
      # without it gets `403 Forbidden`.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :org_id
      # @option params [String, nil] :profile_name
      # @option params [Integer, nil] :fee_type
      # @option params [Integer, nil] :service_vertical
      # @option params [Integer, nil] :profile_id
      # @option params [Integer, nil] :limit_record
      # @option params [Integer, nil] :from_record
      #
      # @example
      #   client.billing.list_profiles(
      #     org_id: 123,
      #     limit_record: 20,
      #     from_record: 0
      #   )
      #
      # @return [Payabli::Types::BillingProfileQueryResponse]
      def list_profiles(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["profileName"] = params[:profile_name] if params.key?(:profile_name)
        query_params["feeType"] = params[:fee_type] if params.key?(:fee_type)
        query_params["serviceVertical"] = params[:service_vertical] if params.key?(:service_vertical)
        query_params["profileId"] = params[:profile_id] if params.key?(:profile_id)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "billing/configuration/org/#{URI.encode_uri_component(params[:org_id].to_s)}",
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
          Payabli::Types::BillingProfileQueryResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Returns the billing profile currently assigned to an entity, including
      # its billable events and fee schedules. Use it to read the pricing terms
      # in effect for an organization, paypoint, template, or application.
      #
      # Requires a token with the `billing_profile_read` permission and access
      # to the requested entity; otherwise the call gets `403 Forbidden`.
      #
      # If the entity exists but has no profile assigned, the call returns
      # `404 Not Found`.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Payabli::Billing::Types::GetProfileBillingRequestServiceGroup] :service_group
      # @option params [Payabli::Billing::Types::GetProfileBillingRequestEntityType] :entity_type
      # @option params [Integer] :entity_id
      #
      # @example
      #   client.billing.get_profile(
      #     service_group: "PayIn",
      #     entity_type: "Organization",
      #     entity_id: 123
      #   )
      #
      # @return [Payabli::Types::BillingProfileResponse]
      def get_profile(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "billing/configuration/#{URI.encode_uri_component(params[:service_group].to_s)}/#{URI.encode_uri_component(params[:entity_type].to_s)}/#{URI.encode_uri_component(params[:entity_id].to_s)}",
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
          Payabli::Types::BillingProfileResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
