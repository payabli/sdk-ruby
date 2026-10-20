# frozen_string_literal: true

module Payabli
  module Paypoints
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Lists paypoints with optional filtering and pagination.
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
      #   client.paypoints.list_paypoints(
      #     limit: 1,
      #     page: 1
      #   )
      #
      # @return [Payabli::Types::ListPaypointsEnvelope]
      def list_paypoints(request_options: {}, **params)
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
          path: "v2/paypoints",
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

      # Creates a paypoint. New paypoints start in `pending`. Provide exactly
      # one of `businessReference` (an existing business) or `business` (to
      # create the business inline).
      #
      # @param request_options [Hash]
      # @param params [Payabli::Paypoints::Types::CreatePaypointPaypointsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.paypoints.create_paypoint(
      #     paypoint_type: "merchant",
      #     doing_business_as: "Rose Gardens",
      #     description: "Boutique flower shop",
      #     website: "https://example.com",
      #     customer_service_phone: "3055551212",
      #     customer_service_email: "support@example.com",
      #     timezone: "America/New_York",
      #     business_reference: "019fed1a-3d6e-75d3-a81e-cba3874b0a55"
      #   )
      #
      # @return [Payabli::Types::PaypointCreatedEnvelope]
      def create_paypoint(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/paypoints",
          headers: headers,
          body: Payabli::Paypoints::Types::CreatePaypointPaypointsRequest.new(params).to_h,
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

      # Retrieves a paypoint by reference.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :paypoint_reference
      #
      # @example
      #   client.paypoints.get_paypoint(paypoint_reference: "019ff064-c690-7679-a73e-688418aadc7c")
      #
      # @return [Payabli::Types::PaypointDetailEnvelope]
      def get_paypoint(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/paypoints/#{URI.encode_uri_component(params[:paypoint_reference].to_s)}",
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

      # Applies a partial update to a paypoint. Send only the fields you want to change.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Paypoints::Types::UpdatePaypointRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :paypoint_reference
      #
      # @example
      #   client.paypoints.update_paypoint(
      #     paypoint_reference: "019ff064-c690-7679-a73e-688418aadc7c",
      #     description: "Updated description"
      #   )
      #
      # @return [Payabli::Types::PaypointUpdatedEnvelope]
      def update_paypoint(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::Paypoints::Types::UpdatePaypointRequest.new(params).to_h
        non_body_param_names = %w[paypointReference]
        body = request_data.except(*non_body_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "v2/paypoints/#{URI.encode_uri_component(params[:paypoint_reference].to_s)}",
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
