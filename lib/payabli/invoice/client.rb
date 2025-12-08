# frozen_string_literal: true

module Payabli
  module Invoice
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Creates an invoice in an entrypoint.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Invoice::Types::InvoiceDataRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :entry
      # @option params [Boolean, nil] :force_customer_creation
      # @option params [String, nil] :idempotency_key
      #
      # @return [Payabli::Invoice::Types::InvoiceResponseWithoutData]
      def add_invoice(request_options: {}, **params)
        path_param_names = %i[entry]
        body_params = params.except(*path_param_names)

        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        query_param_names = %i[force_customer_creation]
        query_params = {}
        query_params["forceCustomerCreation"] = params[:force_customer_creation] if params.key?(:force_customer_creation)
        params = params.except(*query_param_names)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "Invoice/#{params[:entry]}",
          query: query_params,
          body: Payabli::Invoice::Types::InvoiceDataRequest.new(body_params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Invoice::Types::InvoiceResponseWithoutData.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Deletes an invoice that's attached to a file.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :id_invoice
      # @option params [String] :filename
      #
      # @return [Payabli::Invoice::Types::InvoiceResponseWithoutData]
      def delete_attached_from_invoice(request_options: {}, **params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "Invoice/attachedFileFromInvoice/#{params[:id_invoice]}/#{params[:filename]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Invoice::Types::InvoiceResponseWithoutData.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Deletes a single invoice from an entrypoint.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :id_invoice
      #
      # @return [Payabli::Invoice::Types::InvoiceResponseWithoutData]
      def delete_invoice(request_options: {}, **params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "Invoice/#{params[:id_invoice]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Invoice::Types::InvoiceResponseWithoutData.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Updates details for a single invoice in an entrypoint.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Invoice::Types::InvoiceDataRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :id_invoice
      # @option params [Boolean, nil] :force_customer_creation
      #
      # @return [Payabli::Invoice::Types::InvoiceResponseWithoutData]
      def edit_invoice(request_options: {}, **params)
        path_param_names = %i[id_invoice]
        body_params = params.except(*path_param_names)

        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        query_param_names = %i[force_customer_creation]
        query_params = {}
        query_params["forceCustomerCreation"] = params[:force_customer_creation] if params.key?(:force_customer_creation)
        params = params.except(*query_param_names)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "Invoice/#{params[:id_invoice]}",
          query: query_params,
          body: Payabli::Invoice::Types::InvoiceDataRequest.new(body_params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Invoice::Types::InvoiceResponseWithoutData.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a file attached to an invoice.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :id_invoice
      # @option params [String] :filename
      # @option params [Boolean, nil] :return_object
      #
      # @return [Payabli::Types::FileContent]
      def get_attached_file_from_invoice(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        query_param_names = %i[return_object]
        query_params = {}
        query_params["returnObject"] = params[:return_object] if params.key?(:return_object)
        params = params.except(*query_param_names)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Invoice/attachedFileFromInvoice/#{params[:id_invoice]}/#{params[:filename]}",
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
          Payabli::Types::FileContent.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a single invoice by ID.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :id_invoice
      #
      # @return [Payabli::Invoice::Types::GetInvoiceRecord]
      def get_invoice(request_options: {}, **params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Invoice/#{params[:id_invoice]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Invoice::Types::GetInvoiceRecord.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves the next available invoice number for a paypoint.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :entry
      #
      # @return [Payabli::Invoice::Types::InvoiceNumberResponse]
      def get_invoice_number(request_options: {}, **params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Invoice/getNumber/#{params[:entry]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Invoice::Types::InvoiceNumberResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Returns a list of invoices for an entrypoint. Use filters to limit results. Include the `exportFormat` query
      # parameter to return the results as a file instead of a JSON response.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :entry
      # @option params [Payabli::Types::ExportFormat, nil] :export_format
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      # @option params [String, nil] :sort_by
      #
      # @return [Payabli::Invoice::Types::QueryInvoiceResponse]
      def list_invoices(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        query_param_names = %i[export_format from_record limit_record parameters sort_by]
        query_params = {}
        query_params["exportFormat"] = params[:export_format] if params.key?(:export_format)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        query_params["sortBy"] = params[:sort_by] if params.key?(:sort_by)
        params = params.except(*query_param_names)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Query/invoices/#{params[:entry]}",
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
          Payabli::Invoice::Types::QueryInvoiceResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Returns a list of invoices for an org. Use filters to limit results. Include the `exportFormat` query parameter
      # to return the results as a file instead of a JSON response.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :org_id
      # @option params [Payabli::Types::ExportFormat, nil] :export_format
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      # @option params [String, nil] :sort_by
      #
      # @return [Payabli::Invoice::Types::QueryInvoiceResponse]
      def list_invoices_org(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        query_param_names = %i[export_format from_record limit_record parameters sort_by]
        query_params = {}
        query_params["exportFormat"] = params[:export_format] if params.key?(:export_format)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        query_params["sortBy"] = params[:sort_by] if params.key?(:sort_by)
        params = params.except(*query_param_names)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Query/invoices/org/#{params[:org_id]}",
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
          Payabli::Invoice::Types::QueryInvoiceResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Sends an invoice from an entrypoint via email.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :id_invoice
      # @option params [Boolean, nil] :attachfile
      # @option params [String, nil] :mail_2
      #
      # @return [Payabli::Invoice::Types::SendInvoiceResponse]
      def send_invoice(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        query_param_names = %i[attachfile mail_2]
        query_params = {}
        query_params["attachfile"] = params[:attachfile] if params.key?(:attachfile)
        query_params["mail2"] = params[:mail_2] if params.key?(:mail_2)
        params = params.except(*query_param_names)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Invoice/send/#{params[:id_invoice]}",
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
          Payabli::Invoice::Types::SendInvoiceResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Export a single invoice in PDF format.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :id_invoice
      #
      # @return [Hash[String, Object]]
      def get_invoice_pdf(request_options: {}, **params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/invoicePdf/#{params[:id_invoice]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::File.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
