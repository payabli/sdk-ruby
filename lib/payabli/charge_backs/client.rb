# frozen_string_literal: true

module Payabli
  module ChargeBacks
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [Payabli::ChargeBacks::Client]
      def initialize(client:)
        @client = client
      end

      # Add a response to a chargeback or ACH return.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Payabli::ChargeBacks::Types::ResponseChargeBack]
      #
      # @return [Payabli::ChargeBacks::Types::AddResponseResponse]
      def add_response(request_options: {}, **params)
        _path_param_names = %i[id]
        _body = params.except(*_path_param_names)
        _body_prop_names = %i[attachments contact_email contact_name notes]
        _body_bag = _body.slice(*_body_prop_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "POST",
          path: "ChargeBacks/response/#{params[:id]}",
          body: Payabli::ChargeBacks::Types::ResponseChargeBack.new(_body_bag).to_h
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::ChargeBacks::Types::AddResponseResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Retrieves a chargeback record and its details.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::ChargeBacks::Types::ChargebackQueryRecords]
      def get_chargeback(request_options: {}, **params)
        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "GET",
          path: "ChargeBacks/read/#{params[:id]}"
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::ChargeBacks::Types::ChargebackQueryRecords.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [String]
      def get_chargeback_attachment(request_options: {}, **params)
        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "GET",
          path: "ChargeBacks/getChargebackAttachments/#{params[:id]}/#{params[:file_name]}"
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        return if code.between?(200, 299)

        error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(_response.body, code: code)
      end
    end
  end
end
