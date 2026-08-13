# frozen_string_literal: true

module Payabli
  module Customer
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Creates a customer in an entrypoint. An identifier is required to create customer records. Change your
      # identifier settings in Settings > Custom Fields in the Payabli Portal.
      # If you don't include an identifier, the record is rejected.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Types::CustomerData]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Payabli::Types::Entrypointfield] :entry
      # @option params [Boolean, nil] :force_customer_creation
      # @option params [Integer, nil] :replace_existing
      # @option params [String, nil] :idempotency_key
      #
      # @example
      #   client.customer.add_customer(
      #     entry: "8cfec329267",
      #     customer_number: "C-90010",
      #     firstname: "Irene",
      #     lastname: "Canizales",
      #     email: "irene@canizalesconcrete.com",
      #     address_1: "123 Bishop's Trail",
      #     city: "Mountain City",
      #     state: "TN",
      #     zip: "37612",
      #     country: "US",
      #     time_zone: -5,
      #     identifier_fields: ["email"]
      #   )
      #
      # @return [Payabli::Types::PayabliApiResponseCustomerQuery]
      def add_customer(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[entry]
        body_params = params.except(*path_param_names)

        query_param_names = %i[force_customer_creation replace_existing]
        query_params = {}
        query_params["forceCustomerCreation"] = params[:force_customer_creation] if params.key?(:force_customer_creation)
        query_params["replaceExisting"] = params[:replace_existing] if params.key?(:replace_existing)
        params = params.except(*query_param_names)

        headers = {}
        headers["idempotencyKey"] = params[:idempotency_key] if params[:idempotency_key]

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }]).merge(headers)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "Customer/single/#{URI.encode_uri_component(params[:entry].to_s)}",
          headers: headers,
          query: query_params,
          body: Payabli::Types::CustomerData.new(body_params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponseCustomerQuery.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a customer's record and details.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :customer_id
      #
      # @example
      #   client.customer.get_customer(customer_id: 4440)
      #
      # @return [Payabli::Types::CustomerQueryRecords]
      def get_customer(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Customer/#{URI.encode_uri_component(params[:customer_id].to_s)}",
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
          Payabli::Types::CustomerQueryRecords.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Update a customer record. Include only the fields you want to change.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Types::CustomerData]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :customer_id
      #
      # @example
      #   client.customer.update_customer(
      #     customer_id: 4440,
      #     firstname: "Irene",
      #     lastname: "Canizales",
      #     address_1: "145 Bishop's Trail",
      #     city: "Mountain City",
      #     state: "TN",
      #     zip: "37612",
      #     country: "US"
      #   )
      #
      # @return [Payabli::Types::PayabliApiResponse00Responsedatanonobject]
      def update_customer(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[customer_id]
        body_params = params.except(*path_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "Customer/#{URI.encode_uri_component(params[:customer_id].to_s)}",
          headers: headers,
          body: Payabli::Types::CustomerData.new(body_params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponse00Responsedatanonobject.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Delete a customer record.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :customer_id
      #
      # @example
      #   client.customer.delete_customer(customer_id: 4440)
      #
      # @return [Payabli::Types::PayabliApiResponse00Responsedatanonobject]
      def delete_customer(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "Customer/#{URI.encode_uri_component(params[:customer_id].to_s)}",
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
          Payabli::Types::PayabliApiResponse00Responsedatanonobject.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Sends the consent opt-in email to the customer email address in the customer record.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :customer_id
      #
      # @example
      #   client.customer.request_consent(customer_id: 4440)
      #
      # @return [Payabli::Types::PayabliApiResponse00Responsedatanonobject]
      def request_consent(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "Customer/#{URI.encode_uri_component(params[:customer_id].to_s)}/consent",
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
          Payabli::Types::PayabliApiResponse00Responsedatanonobject.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Links a customer to a transaction by ID.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :customer_id
      # @option params [String] :trans_id
      #
      # @example
      #   client.customer.link_customer_transaction(
      #     customer_id: 4440,
      #     trans_id: "45-as456777hhhhhhhhhh77777777-324"
      #   )
      #
      # @return [Payabli::Types::PayabliApiResponse00Responsedatanonobject]
      def link_customer_transaction(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Customer/link/#{URI.encode_uri_component(params[:customer_id].to_s)}/#{URI.encode_uri_component(params[:trans_id].to_s)}",
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
          Payabli::Types::PayabliApiResponse00Responsedatanonobject.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
