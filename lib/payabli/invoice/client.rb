# frozen_string_literal: true

module Payabli
  module Invoice
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [Payabli::Invoice::Client]
      def initialize(client:)
        @client = client
      end

      # Creates an invoice in an entrypoint.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Payabli::Invoice::Types::InvoiceDataRequest]
      #
      # @return [Payabli::Invoice::Types::InvoiceResponseWithoutData]
      def add_invoice(request_options: {}, **params)
        _path_param_names = %i[entry]
        _body = params.except(*_path_param_names)

        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        _query_param_names = %i[force_customer_creation]
        _query = {}
        _query["forceCustomerCreation"] = params[:force_customer_creation] if params.key?(:force_customer_creation)
        params = params.except(*_query_param_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "POST",
          path: "Invoice/#{params[:entry]}",
          query: _query,
          body: Payabli::Invoice::Types::InvoiceDataRequest.new(_body).to_h
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Invoice::Types::InvoiceResponseWithoutData.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Deletes an invoice that's attached to a file.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Invoice::Types::InvoiceResponseWithoutData]
      def delete_attached_from_invoice(request_options: {}, **params)
        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "DELETE",
          path: "Invoice/attachedFileFromInvoice/#{params[:id_invoice]}/#{params[:filename]}"
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Invoice::Types::InvoiceResponseWithoutData.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Deletes a single invoice from an entrypoint.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Invoice::Types::InvoiceResponseWithoutData]
      def delete_invoice(request_options: {}, **params)
        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "DELETE",
          path: "Invoice/#{params[:id_invoice]}"
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Invoice::Types::InvoiceResponseWithoutData.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Updates details for a single invoice in an entrypoint.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Payabli::Invoice::Types::InvoiceDataRequest]
      #
      # @return [Payabli::Invoice::Types::InvoiceResponseWithoutData]
      def edit_invoice(request_options: {}, **params)
        _path_param_names = %i[id_invoice]
        _body = params.except(*_path_param_names)

        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        _query_param_names = %i[force_customer_creation]
        _query = {}
        _query["forceCustomerCreation"] = params[:force_customer_creation] if params.key?(:force_customer_creation)
        params = params.except(*_query_param_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "PUT",
          path: "Invoice/#{params[:id_invoice]}",
          query: _query,
          body: Payabli::Invoice::Types::InvoiceDataRequest.new(_body).to_h
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Invoice::Types::InvoiceResponseWithoutData.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Retrieves a file attached to an invoice.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::FileContent]
      def get_attached_file_from_invoice(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        _query_param_names = %i[return_object]
        _query = {}
        _query["returnObject"] = params[:return_object] if params.key?(:return_object)
        params = params.except(*_query_param_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "GET",
          path: "Invoice/attachedFileFromInvoice/#{params[:id_invoice]}/#{params[:filename]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::FileContent.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Retrieves a single invoice by ID.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Invoice::Types::GetInvoiceRecord]
      def get_invoice(request_options: {}, **params)
        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "GET",
          path: "Invoice/#{params[:id_invoice]}"
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Invoice::Types::GetInvoiceRecord.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Retrieves the next available invoice number for a paypoint.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Invoice::Types::InvoiceNumberResponse]
      def get_invoice_number(request_options: {}, **params)
        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "GET",
          path: "Invoice/getNumber/#{params[:entry]}"
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Invoice::Types::InvoiceNumberResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Returns a list of invoices for an entrypoint. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Invoice::Types::QueryInvoiceResponse]
      def list_invoices(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        _query_param_names = %i[export_format from_record limit_record parameters sort_by]
        _query = {}
        _query["exportFormat"] = params[:export_format] if params.key?(:export_format)
        _query["fromRecord"] = params[:from_record] if params.key?(:from_record)
        _query["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        _query["parameters"] = params[:parameters] if params.key?(:parameters)
        _query["sortBy"] = params[:sort_by] if params.key?(:sort_by)
        params = params.except(*_query_param_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "GET",
          path: "Query/invoices/#{params[:entry]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Invoice::Types::QueryInvoiceResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Returns a list of invoices for an org. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Invoice::Types::QueryInvoiceResponse]
      def list_invoices_org(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        _query_param_names = %i[export_format from_record limit_record parameters sort_by]
        _query = {}
        _query["exportFormat"] = params[:export_format] if params.key?(:export_format)
        _query["fromRecord"] = params[:from_record] if params.key?(:from_record)
        _query["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        _query["parameters"] = params[:parameters] if params.key?(:parameters)
        _query["sortBy"] = params[:sort_by] if params.key?(:sort_by)
        params = params.except(*_query_param_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "GET",
          path: "Query/invoices/org/#{params[:org_id]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Invoice::Types::QueryInvoiceResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Sends an invoice from an entrypoint via email.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Invoice::Types::SendInvoiceResponse]
      def send_invoice(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        _query_param_names = %i[attachfile mail_2]
        _query = {}
        _query["attachfile"] = params[:attachfile] if params.key?(:attachfile)
        _query["mail2"] = params[:mail_2] if params.key?(:mail_2)
        params = params.except(*_query_param_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "GET",
          path: "Invoice/send/#{params[:id_invoice]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Invoice::Types::SendInvoiceResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Export a single invoice in PDF format.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Hash[String, Hash[String, Object]]]
      def get_invoice_pdf(request_options: {}, **params)
        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "GET",
          path: "Export/invoicePdf/#{params[:id_invoice]}"
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::File.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end
    end
  end
end
