# frozen_string_literal: true

module Payabli
  module PaymentMethods
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Lists payment methods with optional filtering and pagination.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :account_owner
      # @option params [Payabli::Types::PaymentMethodOwnerType, nil] :owner_type
      # @option params [String, nil] :status
      # @option params [String, nil] :type
      # @option params [Integer, nil] :limit
      # @option params [Integer, nil] :page
      # @option params [String, nil] :sort_by
      # @option params [String, nil] :sort_order
      #
      # @example
      #   client.payment_methods.list_payment_methods(
      #     limit: 1,
      #     page: 1
      #   )
      #
      # @return [Payabli::Types::ListPaymentMethodsEnvelope]
      def list_payment_methods(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["accountOwner"] = params[:account_owner] if params.key?(:account_owner)
        query_params["ownerType"] = params[:owner_type] if params.key?(:owner_type)
        query_params["status"] = params[:status] if params.key?(:status)
        query_params["type"] = params[:type] if params.key?(:type)
        query_params["limit"] = params[:limit] if params.key?(:limit)
        query_params["page"] = params[:page] if params.key?(:page)
        query_params["sortBy"] = params[:sort_by] if params.key?(:sort_by)
        query_params["sortOrder"] = params[:sort_order] if params.key?(:sort_order)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/payment-methods",
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
          Payabli::Types::ListPaymentMethodsEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Creates one or more payment methods for an entity in a single call.
      # Set each payment method's `accountOwner` to the entity it belongs to.
      #
      # @param request_options [Hash]
      # @param params [Payabli::PaymentMethods::Types::CreatePaymentMethodsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.payment_methods.create_payment_methods(data: [{
      #     type: "bank_account",
      #     account_owner: "019fed1a-3d6e-75d3-a81e-cba3874b0a55",
      #     owner_type: "business",
      #     account_type: "checking",
      #     account_number: "123456789",
      #     routing_number: "021000021",
      #     nickname: "Operating account",
      #     financial_institution: "Bank of Example",
      #     usage: %w[deposits billing]
      #   }])
      #
      # @return [Payabli::Types::PaymentMethodsCreatedEnvelope]
      def create_payment_methods(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/payment-methods",
          headers: headers,
          body: Payabli::PaymentMethods::Types::CreatePaymentMethodsRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PaymentMethodsCreatedEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a payment method by reference. Sensitive fields such as the account and routing numbers are masked.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :payment_method_reference
      #
      # @example
      #   client.payment_methods.get_payment_method(payment_method_reference: "019ff142-454b-7721-96a3-c8628b9d568f")
      #
      # @return [Payabli::Types::PaymentMethodDetailEnvelope]
      def get_payment_method(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/payment-methods/#{URI.encode_uri_component(params[:payment_method_reference].to_s)}",
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
          Payabli::Types::PaymentMethodDetailEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Deactivates a payment method. This is a soft delete: the payment
      # method moves to `INACTIVE` and the record is kept.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :payment_method_reference
      #
      # @example
      #   client.payment_methods.deactivate_payment_method(payment_method_reference: "019ff142-454b-7721-96a3-c8628b9d568f")
      #
      # @return [Payabli::Types::PaymentMethodDeactivatedEnvelope]
      def deactivate_payment_method(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "v2/payment-methods/#{URI.encode_uri_component(params[:payment_method_reference].to_s)}",
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
          Payabli::Types::PaymentMethodDeactivatedEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Applies a partial update to a payment method. Send only the fields you
      # want to change. Only payment methods in `PENDING` status can be updated.
      # Once a payment method is active, change it through the bank account
      # change process instead.
      #
      # @param request_options [Hash]
      # @param params [Payabli::PaymentMethods::Types::UpdatePaymentMethodRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :payment_method_reference
      #
      # @example
      #   client.payment_methods.update_payment_method(
      #     payment_method_reference: "019ff142-454b-7721-96a3-c8628b9d568f",
      #     nickname: "Primary operating account",
      #     usage: %w[deposits billing]
      #   )
      #
      # @return [Payabli::Types::PaymentMethodUpdatedEnvelope]
      def update_payment_method(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::PaymentMethods::Types::UpdatePaymentMethodRequest.new(params).to_h
        non_body_param_names = %w[paymentMethodReference]
        body = request_data.except(*non_body_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "v2/payment-methods/#{URI.encode_uri_component(params[:payment_method_reference].to_s)}",
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
          Payabli::Types::PaymentMethodUpdatedEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
