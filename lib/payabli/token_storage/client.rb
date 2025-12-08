# frozen_string_literal: true

module Payabli
  module TokenStorage
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Saves a payment method for reuse. This call exchanges sensitive payment information for a token that can be used
      # to process future transactions. The `ReferenceId` value in the response is the `storedMethodId` to use with
      # transactions.
      #
      # @param request_options [Hash]
      # @param params [Payabli::TokenStorage::Types::RequestTokenStorage]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Boolean, nil] :ach_validation
      # @option params [Payabli::TokenStorage::Types::CreateAnonymous] :create_anonymous
      # @option params [Boolean, nil] :force_customer_creation
      # @option params [Payabli::TokenStorage::Types::Temporary] :temporary
      # @option params [String, nil] :idempotency_key
      #
      # @return [Payabli::TokenStorage::Types::AddMethodResponse]
      def add_method(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        query_param_names = %i[ach_validation create_anonymous force_customer_creation temporary]
        query_params = {}
        query_params["achValidation"] = params[:ach_validation] if params.key?(:ach_validation)
        query_params["createAnonymous"] = params[:create_anonymous] if params.key?(:create_anonymous)
        query_params["forceCustomerCreation"] = params[:force_customer_creation] if params.key?(:force_customer_creation)
        query_params["temporary"] = params[:temporary] if params.key?(:temporary)
        params = params.except(*query_param_names)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "TokenStorage/add",
          query: query_params,
          body: Payabli::TokenStorage::Types::RequestTokenStorage.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::TokenStorage::Types::AddMethodResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves details for a saved payment method.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :method_id
      # @option params [Integer, nil] :card_expiration_format
      # @option params [Boolean, nil] :include_temporary
      #
      # @return [Payabli::TokenStorage::Types::GetMethodResponse]
      def get_method(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        query_param_names = %i[card_expiration_format include_temporary]
        query_params = {}
        query_params["cardExpirationFormat"] = params[:card_expiration_format] if params.key?(:card_expiration_format)
        query_params["includeTemporary"] = params[:include_temporary] if params.key?(:include_temporary)
        params = params.except(*query_param_names)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "TokenStorage/#{params[:method_id]}",
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
          Payabli::TokenStorage::Types::GetMethodResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Deletes a saved payment method.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :method_id
      #
      # @return [Payabli::Types::PayabliApiResponsePaymethodDelete]
      def remove_method(request_options: {}, **params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "TokenStorage/#{params[:method_id]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponsePaymethodDelete.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Updates a saved payment method.
      #
      # @param request_options [Hash]
      # @param params [Payabli::TokenStorage::Types::RequestTokenStorage]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :method_id
      # @option params [Boolean, nil] :ach_validation
      #
      # @return [Payabli::Types::PayabliApiResponsePaymethodDelete]
      def update_method(request_options: {}, **params)
        path_param_names = %i[method_id]
        body_params = params.except(*path_param_names)

        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        query_param_names = %i[ach_validation]
        query_params = {}
        query_params["achValidation"] = params[:ach_validation] if params.key?(:ach_validation)
        params = params.except(*query_param_names)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "TokenStorage/#{params[:method_id]}",
          query: query_params,
          body: Payabli::TokenStorage::Types::RequestTokenStorage.new(body_params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponsePaymethodDelete.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
