# frozen_string_literal: true

module Payabli
  module ChargeBacks
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Add a response to a chargeback or ACH return.
      #
      # @param request_options [Hash]
      # @param params [Payabli::ChargeBacks::Types::ResponseChargeBack]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :id
      # @option params [String, nil] :idempotency_key
      #
      # @return [Payabli::ChargeBacks::Types::AddResponseResponse]
      def add_response(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::ChargeBacks::Types::ResponseChargeBack.new(params).to_h
        non_body_param_names = %w[Id idempotencyKey]
        body = request_data.except(*non_body_param_names)

        headers = {}
        headers["idempotencyKey"] = params[:idempotency_key] if params[:idempotency_key]

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "ChargeBacks/response/#{params[:id]}",
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
          Payabli::ChargeBacks::Types::AddResponseResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a chargeback record and its details.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :id
      #
      # @return [Payabli::ChargeBacks::Types::ChargebackQueryRecords]
      def get_chargeback(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "ChargeBacks/read/#{params[:id]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::ChargeBacks::Types::ChargebackQueryRecords.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a chargeback attachment file by its file name.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :id
      # @option params [String] :file_name
      #
      # @return [String]
      def get_chargeback_attachment(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "ChargeBacks/getChargebackAttachments/#{params[:id]}/#{params[:file_name]}",
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
