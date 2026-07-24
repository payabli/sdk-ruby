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
      # @param params [Payabli::Types::InvoiceDataRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :entry
      # @option params [Boolean, nil] :force_customer_creation
      # @option params [String, nil] :idempotency_key
      #
      # @example
      #   client.invoice.add_invoice(
      #     entry: "8cfec329267",
      #     customer_data: {
      #       first_name: "Tamara",
      #       last_name: "Bagratoni",
      #       customer_number: "C-90010"
      #     },
      #     invoice_data: {
      #       items: [{
      #         item_product_name: "Adventure Consult",
      #         item_description: "Consultation for Georgian tours",
      #         item_cost: 100,
      #         item_qty: 2,
      #         item_mode: 2,
      #         item_total_amount: 200
      #       }, {
      #         item_product_name: "Deposit ",
      #         item_description: "Deposit for trip planning",
      #         item_cost: 882.37,
      #         item_qty: 1,
      #         item_mode: 2,
      #         item_total_amount: 882.37
      #       }],
      #       invoice_date: "2025-10-19",
      #       invoice_type: 0,
      #       invoice_status: 1,
      #       frequency: "onetime",
      #       invoice_amount: 1082.37,
      #       discount: 10,
      #       invoice_number: "INV-2345"
      #     }
      #   )
      #
      # @return [Payabli::Types::InvoiceResponseWithoutData]
      def add_invoice(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[entry]
        body_params = params.except(*path_param_names)

        query_param_names = %i[force_customer_creation]
        query_params = {}
        query_params["forceCustomerCreation"] = params[:force_customer_creation] if params.key?(:force_customer_creation)
        params = params.except(*query_param_names)

        headers = {}
        headers["idempotencyKey"] = params[:idempotency_key] if params[:idempotency_key]

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }]).merge(headers)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "Invoice/#{URI.encode_uri_component(params[:entry].to_s)}",
          headers: headers,
          query: query_params,
          body: Payabli::Types::InvoiceDataRequest.new(body_params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::InvoiceResponseWithoutData.load(response.body)
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
      # @example
      #   client.invoice.get_attached_file_from_invoice(
      #     id_invoice: 1,
      #     filename: "filename"
      #   )
      #
      # @return [Payabli::Types::FileContent]
      def get_attached_file_from_invoice(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["returnObject"] = params[:return_object] if params.key?(:return_object)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Invoice/attachedFileFromInvoice/#{URI.encode_uri_component(params[:id_invoice].to_s)}/#{URI.encode_uri_component(params[:filename].to_s)}",
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
          Payabli::Types::FileContent.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Deletes a file attached to an invoice.
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
      # @example
      #   client.invoice.delete_attached_from_invoice(
      #     id_invoice: 23548884,
      #     filename: "0_Bill.pdf"
      #   )
      #
      # @return [Payabli::Types::InvoiceResponseWithoutData]
      def delete_attached_from_invoice(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "Invoice/attachedFileFromInvoice/#{URI.encode_uri_component(params[:id_invoice].to_s)}/#{URI.encode_uri_component(params[:filename].to_s)}",
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
          Payabli::Types::InvoiceResponseWithoutData.load(response.body)
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
      # @example
      #   client.invoice.get_invoice(id_invoice: 23548884)
      #
      # @return [Payabli::Types::GetInvoiceRecord]
      def get_invoice(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Invoice/#{URI.encode_uri_component(params[:id_invoice].to_s)}",
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
          Payabli::Types::GetInvoiceRecord.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Updates details for a single invoice in an entrypoint.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Types::InvoiceDataRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :id_invoice
      # @option params [Boolean, nil] :force_customer_creation
      #
      # @example
      #   client.invoice.edit_invoice(
      #     id_invoice: 23548884,
      #     invoice_data: {
      #       items: [{
      #         item_product_name: "Deposit",
      #         item_description: "Deposit for trip planning",
      #         item_cost: 882.37,
      #         item_qty: 1
      #       }],
      #       invoice_date: "2025-10-19",
      #       invoice_amount: 982.37,
      #       invoice_number: "INV-2345"
      #     }
      #   )
      #
      # @return [Payabli::Types::InvoiceResponseWithoutData]
      def edit_invoice(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[id_invoice]
        body_params = params.except(*path_param_names)

        query_param_names = %i[force_customer_creation]
        query_params = {}
        query_params["forceCustomerCreation"] = params[:force_customer_creation] if params.key?(:force_customer_creation)
        params = params.except(*query_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "Invoice/#{URI.encode_uri_component(params[:id_invoice].to_s)}",
          headers: headers,
          query: query_params,
          body: Payabli::Types::InvoiceDataRequest.new(body_params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::InvoiceResponseWithoutData.load(response.body)
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
      # @example
      #   client.invoice.delete_invoice(id_invoice: 23548884)
      #
      # @return [Payabli::Types::InvoiceResponseWithoutData]
      def delete_invoice(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "Invoice/#{URI.encode_uri_component(params[:id_invoice].to_s)}",
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
          Payabli::Types::InvoiceResponseWithoutData.load(response.body)
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
      # @example
      #   client.invoice.get_invoice_number(entry: "8cfec329267")
      #
      # @return [Payabli::Types::InvoiceNumberResponse]
      def get_invoice_number(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Invoice/getNumber/#{URI.encode_uri_component(params[:entry].to_s)}",
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
          Payabli::Types::InvoiceNumberResponse.load(response.body)
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
      # @example
      #   client.invoice.list_invoices(
      #     entry: "8cfec329267",
      #     from_record: 251,
      #     limit_record: 0,
      #     sort_by: "desc(field_name)"
      #   )
      #
      # @return [Payabli::Types::QueryInvoiceResponse]
      def list_invoices(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["exportFormat"] = params[:export_format] if params.key?(:export_format)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        query_params["sortBy"] = params[:sort_by] if params.key?(:sort_by)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Query/invoices/#{URI.encode_uri_component(params[:entry].to_s)}",
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
          Payabli::Types::QueryInvoiceResponse.load(response.body)
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
      # @example
      #   client.invoice.list_invoices_org(
      #     org_id: 123,
      #     from_record: 251,
      #     limit_record: 0,
      #     sort_by: "desc(field_name)"
      #   )
      #
      # @return [Payabli::Types::QueryInvoiceResponse]
      def list_invoices_org(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["exportFormat"] = params[:export_format] if params.key?(:export_format)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        query_params["sortBy"] = params[:sort_by] if params.key?(:sort_by)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Query/invoices/org/#{URI.encode_uri_component(params[:org_id].to_s)}",
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
          Payabli::Types::QueryInvoiceResponse.load(response.body)
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
      # @example
      #   client.invoice.send_invoice(
      #     id_invoice: 23548884,
      #     attachfile: true,
      #     mail_2: "tamara@example.com"
      #   )
      #
      # @return [Payabli::Types::SendInvoiceResponse]
      def send_invoice(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["attachfile"] = params[:attachfile] if params.key?(:attachfile)
        query_params["mail2"] = params[:mail_2] if params.key?(:mail_2)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Invoice/send/#{URI.encode_uri_component(params[:id_invoice].to_s)}",
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
          Payabli::Types::SendInvoiceResponse.load(response.body)
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
      # @example
      #   client.invoice.get_invoice_pdf(id_invoice: 23548884)
      #
      # @return [Hash[String, Object]]
      def get_invoice_pdf(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/invoicePdf/#{URI.encode_uri_component(params[:id_invoice].to_s)}",
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
          Payabli::Types::File.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
