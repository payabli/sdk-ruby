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

      # Saves a payment method for reuse. This call exchanges sensitive payment information for a token that can be used to process future transactions. The `ReferenceId` value in the response is the `storedMethodId` to use with transactions.
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
        _query_param_names = %i[ach_validation create_anonymous force_customer_creation temporary]
        _query = {}
        _query["achValidation"] = params[:ach_validation] if params.key?(:ach_validation)
        _query["createAnonymous"] = params[:create_anonymous] if params.key?(:create_anonymous)
        _query["forceCustomerCreation"] = params[:force_customer_creation] if params.key?(:force_customer_creation)
        _query["temporary"] = params[:temporary] if params.key?(:temporary)
        params = params.except(*_query_param_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "POST",
          path: "TokenStorage/add",
          query: _query,
          body: Payabli::TokenStorage::Types::RequestTokenStorage.new(params).to_h
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::TokenStorage::Types::AddMethodResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
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
        _query_param_names = %i[card_expiration_format include_temporary]
        _query = {}
        _query["cardExpirationFormat"] = params[:card_expiration_format] if params.key?(:card_expiration_format)
        _query["includeTemporary"] = params[:include_temporary] if params.key?(:include_temporary)
        params = params.except(*_query_param_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "GET",
          path: "TokenStorage/#{params[:method_id]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::TokenStorage::Types::GetMethodResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
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
        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "DELETE",
          path: "TokenStorage/#{params[:method_id]}"
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponsePaymethodDelete.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
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
        _path_param_names = %i[method_id]
        _body = params.except(*_path_param_names)

        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        _query_param_names = %i[ach_validation]
        _query = {}
        _query["achValidation"] = params[:ach_validation] if params.key?(:ach_validation)
        params = params.except(*_query_param_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "PUT",
          path: "TokenStorage/#{params[:method_id]}",
          query: _query,
          body: Payabli::TokenStorage::Types::RequestTokenStorage.new(_body).to_h
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponsePaymethodDelete.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end
    end
  end
end
