# frozen_string_literal: true

module Payabli
  module PaymentLink
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Generates a payment link for an invoice from the invoice ID.
      #
      # @param request_options [Hash]
      # @param params [Payabli::PaymentLink::Types::PaymentPageRequestBody]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :id_invoice
      # @option params [Boolean, nil] :amount_fixed
      # @option params [String, nil] :mail_2
      # @option params [String, nil] :idempotency_key
      #
      # @return [Payabli::PaymentLink::Types::PayabliApiResponsePaymentLinks]
      def add_pay_link_from_invoice(request_options: {}, **params)
        _path_param_names = %i[id_invoice]
        _body = params.except(*_path_param_names)

        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        _query_param_names = %i[amount_fixed mail_2]
        _query = {}
        _query["amountFixed"] = params[:amount_fixed] if params.key?(:amount_fixed)
        _query["mail2"] = params[:mail_2] if params.key?(:mail_2)
        params = params.except(*_query_param_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "POST",
          path: "PaymentLink/#{params[:id_invoice]}",
          query: _query,
          body: Payabli::PaymentLink::Types::PaymentPageRequestBody.new(_body).to_h
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::PaymentLink::Types::PayabliApiResponsePaymentLinks.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Generates a payment link for a bill from the bill ID.
      #
      # @param request_options [Hash]
      # @param params [Payabli::PaymentLink::Types::PaymentPageRequestBody]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :bill_id
      # @option params [Boolean, nil] :amount_fixed
      # @option params [String, nil] :mail_2
      # @option params [String, nil] :idempotency_key
      #
      # @return [Payabli::PaymentLink::Types::PayabliApiResponsePaymentLinks]
      def add_pay_link_from_bill(request_options: {}, **params)
        _path_param_names = %i[bill_id]
        _body = params.except(*_path_param_names)

        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        _query_param_names = %i[amount_fixed mail_2]
        _query = {}
        _query["amountFixed"] = params[:amount_fixed] if params.key?(:amount_fixed)
        _query["mail2"] = params[:mail_2] if params.key?(:mail_2)
        params = params.except(*_query_param_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "POST",
          path: "PaymentLink/bill/#{params[:bill_id]}",
          query: _query,
          body: Payabli::PaymentLink::Types::PaymentPageRequestBody.new(_body).to_h
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::PaymentLink::Types::PayabliApiResponsePaymentLinks.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Deletes a payment link by ID.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :pay_link_id
      #
      # @return [Payabli::PaymentLink::Types::PayabliApiResponsePaymentLinks]
      def delete_pay_link_from_id(request_options: {}, **params)
        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "DELETE",
          path: "PaymentLink/#{params[:pay_link_id]}"
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::PaymentLink::Types::PayabliApiResponsePaymentLinks.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Retrieves a payment link by ID.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :paylink_id
      #
      # @return [Payabli::PaymentLink::Types::GetPayLinkFromIdResponse]
      def get_pay_link_from_id(request_options: {}, **params)
        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "GET",
          path: "PaymentLink/load/#{params[:paylink_id]}"
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::PaymentLink::Types::GetPayLinkFromIdResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Send a payment link to the specified email addresses or phone numbers.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Types::PushPayLinkRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :pay_link_id
      #
      # @return [Payabli::PaymentLink::Types::PayabliApiResponsePaymentLinks]
      def push_pay_link_from_id(request_options: {}, **params)
        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "POST",
          path: "PaymentLink/push/#{params[:pay_link_id]}",
          body: Payabli::Types::PushPayLinkRequest.new(params).to_h
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::PaymentLink::Types::PayabliApiResponsePaymentLinks.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Refresh a payment link's content after an update.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :pay_link_id
      # @option params [Boolean, nil] :amount_fixed
      #
      # @return [Payabli::PaymentLink::Types::PayabliApiResponsePaymentLinks]
      def refresh_pay_link_from_id(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        _query_param_names = %i[amount_fixed]
        _query = {}
        _query["amountFixed"] = params[:amount_fixed] if params.key?(:amount_fixed)
        params = params.except(*_query_param_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "GET",
          path: "PaymentLink/refresh/#{params[:pay_link_id]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::PaymentLink::Types::PayabliApiResponsePaymentLinks.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Sends a payment link to the specified email addresses.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :pay_link_id
      # @option params [Boolean, nil] :attachfile
      # @option params [String, nil] :mail_2
      #
      # @return [Payabli::PaymentLink::Types::PayabliApiResponsePaymentLinks]
      def send_pay_link_from_id(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        _query_param_names = %i[attachfile mail_2]
        _query = {}
        _query["attachfile"] = params[:attachfile] if params.key?(:attachfile)
        _query["mail2"] = params[:mail_2] if params.key?(:mail_2)
        params = params.except(*_query_param_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "GET",
          path: "PaymentLink/send/#{params[:pay_link_id]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::PaymentLink::Types::PayabliApiResponsePaymentLinks.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Updates a payment link's details.
      #
      # @param request_options [Hash]
      # @param params [Payabli::PaymentLink::Types::PayLinkUpdateData]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :pay_link_id
      #
      # @return [Payabli::PaymentLink::Types::PayabliApiResponsePaymentLinks]
      def update_pay_link_from_id(request_options: {}, **params)
        _path_param_names = %i[pay_link_id]
        _body = params.except(*_path_param_names)
        _body_prop_names = %i[contact_us logo message_before_paying notes page payment_button payment_methods review
                              settings]
        _body_bag = _body.slice(*_body_prop_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "PUT",
          path: "PaymentLink/update/#{params[:pay_link_id]}",
          body: Payabli::PaymentLink::Types::PayLinkUpdateData.new(_body_bag).to_h
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::PaymentLink::Types::PayabliApiResponsePaymentLinks.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Generates a vendor payment link for a specific bill lot number. This allows you to pay all bills with the same lot number for a vendor with a single payment link.
      #
      # @param request_options [Hash]
      # @param params [Payabli::PaymentLink::Types::PaymentPageRequestBody]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :lot_number
      # @option params [Payabli::Types::Entry] :entry_point
      # @option params [String] :vendor_number
      # @option params [String, nil] :mail_2
      # @option params [String, nil] :amount_fixed
      #
      # @return [Payabli::PaymentLink::Types::PayabliApiResponsePaymentLinks]
      def add_pay_link_from_bill_lot_number(request_options: {}, **params)
        _path_param_names = %i[lot_number]
        _body = params.except(*_path_param_names)

        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        _query_param_names = %i[entry_point vendor_number mail_2 amount_fixed]
        _query = {}
        _query["entryPoint"] = params[:entry_point] if params.key?(:entry_point)
        _query["vendorNumber"] = params[:vendor_number] if params.key?(:vendor_number)
        _query["mail2"] = params[:mail_2] if params.key?(:mail_2)
        _query["amountFixed"] = params[:amount_fixed] if params.key?(:amount_fixed)
        params = params.except(*_query_param_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "POST",
          path: "PaymentLink/bill/lotNumber/#{params[:lot_number]}",
          query: _query,
          body: Payabli::PaymentLink::Types::PaymentPageRequestBody.new(_body).to_h
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::PaymentLink::Types::PayabliApiResponsePaymentLinks.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end
    end
  end
end
