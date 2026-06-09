# frozen_string_literal: true

module Payabli
  module Export
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # <Warning>
      # This endpoint is deprecated. To export this data, use [List all apps for
      # org](/developers/api-reference/boarding/get-list-of-applications-for-an-organization) with the `exportFormat`
      # query parameter instead.
      # </Warning>
      #
      # Export a list of boarding applications for an organization. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Payabli::Types::ExportFormat1] :format
      # @option params [Integer] :org_id
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_applications(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/boarding/#{URI.encode_uri_component(params[:format].to_s)}/#{URI.encode_uri_component(params[:org_id].to_s)}",
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
          Payabli::Types::File.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # <Warning>
      # This endpoint is deprecated. To export this data, use [List batch
      # details](/developers/api-reference/query/get-list-of-batchdetails-for-an-entrypoint) with the `exportFormat`
      # query parameter instead.
      # </Warning>
      #
      # Export batch details for a paypoint. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Payabli::Types::ExportFormat1] :format
      # @option params [String] :entry
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_batch_details(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/batchDetails/#{URI.encode_uri_component(params[:format].to_s)}/#{URI.encode_uri_component(params[:entry].to_s)}",
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
          Payabli::Types::File.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # <Warning>
      # This endpoint is deprecated. To export this data, use [List batch details for
      # org](/developers/api-reference/query/get-list-of-batchdetails-for-an-organization) with the `exportFormat` query
      # parameter instead.
      # </Warning>
      #
      # Export batch details for an organization. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Payabli::Types::ExportFormat1] :format
      # @option params [Integer] :org_id
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_batch_details_org(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/batchDetails/#{URI.encode_uri_component(params[:format].to_s)}/org/#{URI.encode_uri_component(params[:org_id].to_s)}",
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
          Payabli::Types::File.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # <Warning>
      # This endpoint is deprecated. To export this data, use [List batches for
      # paypoint](/developers/api-reference/query/get-list-of-batches-for-an-entrypoint) with the `exportFormat` query
      # parameter instead.
      # </Warning>
      #
      # Export a list of batches for an entrypoint. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Payabli::Types::ExportFormat1] :format
      # @option params [String] :entry
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_batches(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/batches/#{URI.encode_uri_component(params[:format].to_s)}/#{URI.encode_uri_component(params[:entry].to_s)}",
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
          Payabli::Types::File.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # <Warning>
      # This endpoint is deprecated. To export this data, use [List batches for
      # org](/developers/api-reference/query/get-list-of-batches-for-an-organization) with the `exportFormat` query
      # parameter instead.
      # </Warning>
      #
      # Export a list of batches for an organization. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Payabli::Types::ExportFormat1] :format
      # @option params [Integer] :org_id
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_batches_org(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/batches/#{URI.encode_uri_component(params[:format].to_s)}/org/#{URI.encode_uri_component(params[:org_id].to_s)}",
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
          Payabli::Types::File.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # <Warning>
      # This endpoint is deprecated. To export this data, use [List payout batches for
      # paypoint](/developers/api-reference/query/get-list-of-moneyout-batches-for-an-entrypoint) with the
      # `exportFormat` query parameter instead.
      # </Warning>
      #
      # Export a list of money out batches for a paypoint. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Payabli::Types::ExportFormat1] :format
      # @option params [String] :entry
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_batches_out(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/batchesOut/#{URI.encode_uri_component(params[:format].to_s)}/#{URI.encode_uri_component(params[:entry].to_s)}",
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
          Payabli::Types::File.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # <Warning>
      # This endpoint is deprecated. To export this data, use [List payout batches for
      # org](/developers/api-reference/query/get-list-of-moneyout-batches-for-an-org) with the `exportFormat` query
      # parameter instead.
      # </Warning>
      #
      # Export a list of money out batches for an organization. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Payabli::Types::ExportFormat1] :format
      # @option params [Integer] :org_id
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_batches_out_org(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/batchesOut/#{URI.encode_uri_component(params[:format].to_s)}/org/#{URI.encode_uri_component(params[:org_id].to_s)}",
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
          Payabli::Types::File.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # <Warning>
      # This endpoint is deprecated. To export this data, use [List bills by
      # paypoint](/developers/api-reference/bill/get-list-of-bills-for-entrypoint) with the `exportFormat` query
      # parameter instead.
      # </Warning>
      #
      # Export a list of bills for an entrypoint. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Payabli::Types::ExportFormat1] :format
      # @option params [String] :entry
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_bills(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/bills/#{URI.encode_uri_component(params[:format].to_s)}/#{URI.encode_uri_component(params[:entry].to_s)}",
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
          Payabli::Types::File.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # <Warning>
      # This endpoint is deprecated. To export this data, use [List bills by
      # organization](/developers/api-reference/bill/get-list-of-bills-for-organization) with the `exportFormat` query
      # parameter instead.
      # </Warning>
      #
      # Export a list of bills for an organization. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Payabli::Types::ExportFormat1] :format
      # @option params [Integer] :org_id
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_bills_org(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/bills/#{URI.encode_uri_component(params[:format].to_s)}/org/#{URI.encode_uri_component(params[:org_id].to_s)}",
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
          Payabli::Types::File.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # <Warning>
      # This endpoint is deprecated. To export this data, use [List disputes by
      # paypoint](/developers/api-reference/chargebacks/get-list-of-chargebacks-and-returned-transactions-for-an-entrypoint)
      # with the `exportFormat` query parameter instead.
      # </Warning>
      #
      # Export a list of chargebacks and ACH returns for an entrypoint. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Payabli::Types::ExportFormat1] :format
      # @option params [String] :entry
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_chargebacks(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/chargebacks/#{URI.encode_uri_component(params[:format].to_s)}/#{URI.encode_uri_component(params[:entry].to_s)}",
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
          Payabli::Types::File.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # <Warning>
      # This endpoint is deprecated. To export this data, use [List disputes by
      # organization](/developers/api-reference/chargebacks/get-list-of-chargebacks-and-returned-transactions-for-an-org)
      # with the `exportFormat` query parameter instead.
      # </Warning>
      #
      # Export a list of chargebacks and ACH returns for an organization. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Payabli::Types::ExportFormat1] :format
      # @option params [Integer] :org_id
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_chargebacks_org(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/chargebacks/#{URI.encode_uri_component(params[:format].to_s)}/org/#{URI.encode_uri_component(params[:org_id].to_s)}",
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
          Payabli::Types::File.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # <Warning>
      # This endpoint is deprecated. To export this data, use [List customers by
      # paypoint](/developers/api-reference/customer/get-list-of-customers-for-an-entrypoint) with the `exportFormat`
      # query parameter instead.
      # </Warning>
      #
      # Export a list of customers for an entrypoint. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Payabli::Types::ExportFormat1] :format
      # @option params [String] :entry
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_customers(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/customers/#{URI.encode_uri_component(params[:format].to_s)}/#{URI.encode_uri_component(params[:entry].to_s)}",
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
          Payabli::Types::File.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # <Warning>
      # This endpoint is deprecated. To export this data, use [List customers by
      # organization](/developers/api-reference/customer/get-list-of-customers-for-an-organization) with the
      # `exportFormat` query parameter instead.
      # </Warning>
      #
      # Exports a list of customers for an organization. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Payabli::Types::ExportFormat1] :format
      # @option params [Integer] :org_id
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_customers_org(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/customers/#{URI.encode_uri_component(params[:format].to_s)}/org/#{URI.encode_uri_component(params[:org_id].to_s)}",
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
          Payabli::Types::File.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # <Warning>
      # This endpoint is deprecated. To export this data, use [List invoices by
      # paypoint](/developers/api-reference/invoice/get-list-of-invoices-for-an-entrypoint) with the `exportFormat`
      # query parameter instead.
      # </Warning>
      #
      # Export list of invoices for an entrypoint. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Payabli::Types::ExportFormat1] :format
      # @option params [String] :entry
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_invoices(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/invoices/#{URI.encode_uri_component(params[:format].to_s)}/#{URI.encode_uri_component(params[:entry].to_s)}",
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
          Payabli::Types::File.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # <Warning>
      # This endpoint is deprecated. To export this data, use [List invoices by
      # organization](/developers/api-reference/invoice/get-list-of-invoices-for-an-organization) with the
      # `exportFormat` query parameter instead.
      # </Warning>
      #
      # Export a list of invoices for an organization. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Payabli::Types::ExportFormat1] :format
      # @option params [Integer] :org_id
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_invoices_org(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/invoices/#{URI.encode_uri_component(params[:format].to_s)}/org/#{URI.encode_uri_component(params[:org_id].to_s)}",
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
          Payabli::Types::File.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # <Warning>
      # This endpoint is deprecated. To export this data, use [List suborganizations by
      # organization](/developers/api-reference/organization/get-list-of-organizations-for-entrypoint) with the
      # `exportFormat` query parameter instead.
      # </Warning>
      #
      # Export a list of child organizations (suborganizations) for a parent organization.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Payabli::Types::ExportFormat1] :format
      # @option params [Integer] :org_id
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_organizations(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/organizations/#{URI.encode_uri_component(params[:format].to_s)}/org/#{URI.encode_uri_component(params[:org_id].to_s)}",
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
          Payabli::Types::File.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # <Warning>
      # This endpoint is deprecated. To export this data, use [List payouts by
      # paypoint](/developers/api-reference/query/get-list-of-payouts-for-entrypoint) with the `exportFormat` query
      # parameter instead.
      # </Warning>
      #
      # Export a list of payouts and their statuses for an entrypoint. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Payabli::Types::ExportFormat1] :format
      # @option params [String] :entry
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_payout(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/payouts/#{URI.encode_uri_component(params[:format].to_s)}/#{URI.encode_uri_component(params[:entry].to_s)}",
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
          Payabli::Types::File.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # <Warning>
      # This endpoint is deprecated. To export this data, use [List payouts by
      # org](/developers/api-reference/query/get-list-of-payouts-for-organization) with the `exportFormat` query
      # parameter instead.
      # </Warning>
      #
      # Export a list of payouts and their details for an organization. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Payabli::Types::ExportFormat1] :format
      # @option params [Integer] :org_id
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_payout_org(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/payouts/#{URI.encode_uri_component(params[:format].to_s)}/org/#{URI.encode_uri_component(params[:org_id].to_s)}",
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
          Payabli::Types::File.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # <Warning>
      # This endpoint is deprecated. To export this data, use [List paypoints by
      # organization](/developers/api-reference/paypoint/get-list-of-paypoints-for-an-organization) with the
      # `exportFormat` query parameter instead.
      # </Warning>
      #
      # Export a list of paypoints in an organization. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Payabli::Types::ExportFormat1] :format
      # @option params [Integer] :org_id
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_paypoints(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/paypoints/#{URI.encode_uri_component(params[:format].to_s)}/#{URI.encode_uri_component(params[:org_id].to_s)}",
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
          Payabli::Types::File.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # <Warning>
      # This endpoint is deprecated. To export this data, use [List settled transactions for
      # paypoint](/developers/api-reference/query/get-list-of-settled-transactions-for-an-entrypoint) with the
      # `exportFormat` query parameter instead.
      # </Warning>
      #
      # Export a list of settled transactions for an entrypoint. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Payabli::Types::ExportFormat1] :format
      # @option params [String] :entry
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_settlements(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/settlements/#{URI.encode_uri_component(params[:format].to_s)}/#{URI.encode_uri_component(params[:entry].to_s)}",
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
          Payabli::Types::File.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # <Warning>
      # This endpoint is deprecated. To export this data, use [List settled transactions for
      # org](/developers/api-reference/query/get-list-of-settled-transactions-for-an-org) with the `exportFormat` query
      # parameter instead.
      # </Warning>
      #
      # Export a list of settled transactions for an organization. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Payabli::Types::ExportFormat1] :format
      # @option params [Integer] :org_id
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_settlements_org(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/settlements/#{URI.encode_uri_component(params[:format].to_s)}/org/#{URI.encode_uri_component(params[:org_id].to_s)}",
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
          Payabli::Types::File.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # <Warning>
      # This endpoint is deprecated. To export this data, use [List subscriptions by
      # paypoint](/developers/api-reference/subscription/get-list-of-subscriptions-for-an-entrypoint) with the
      # `exportFormat` query parameter instead.
      # </Warning>
      #
      # Export a list of subscriptions for an entrypoint. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Payabli::Types::ExportFormat1] :format
      # @option params [String] :entry
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_subscriptions(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/subscriptions/#{URI.encode_uri_component(params[:format].to_s)}/#{URI.encode_uri_component(params[:entry].to_s)}",
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
          Payabli::Types::File.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # <Warning>
      # This endpoint is deprecated. To export this data, use [List subscriptions by
      # organization](/developers/api-reference/subscription/get-list-of-subscriptions-for-an-org) with the
      # `exportFormat` query parameter instead.
      # </Warning>
      #
      # Export a list of subscriptions for an organization. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Payabli::Types::ExportFormat1] :format
      # @option params [Integer] :org_id
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_subscriptions_org(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/subscriptions/#{URI.encode_uri_component(params[:format].to_s)}/org/#{URI.encode_uri_component(params[:org_id].to_s)}",
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
          Payabli::Types::File.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # <Warning>
      # This endpoint is deprecated. To export this data, use [List transactions for
      # paypoint](/developers/api-reference/query/get-list-of-transactions-for-an-entrypoint) with the `exportFormat`
      # query parameter instead.
      # </Warning>
      #
      # Export a list of transactions for an entrypoint in a file in XLSX or CSV format. Use filters to limit results.
      # If you don't specify a date range in the request, the last two months of data are returned.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Payabli::Types::ExportFormat1] :format
      # @option params [String] :entry
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_transactions(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/transactions/#{URI.encode_uri_component(params[:format].to_s)}/#{URI.encode_uri_component(params[:entry].to_s)}",
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
          Payabli::Types::File.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # <Warning>
      # This endpoint is deprecated. To export this data, use [List transactions for
      # org](/developers/api-reference/query/get-list-of-transactions-for-an-organization) with the `exportFormat` query
      # parameter instead.
      # </Warning>
      #
      # Export a list of transactions for an org in a file in XLSX or CSV format. Use filters to limit results. If you
      # don't specify a date range in the request, the last two months of data are returned.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Payabli::Types::ExportFormat1] :format
      # @option params [Integer] :org_id
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_transactions_org(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/transactions/#{URI.encode_uri_component(params[:format].to_s)}/org/#{URI.encode_uri_component(params[:org_id].to_s)}",
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
          Payabli::Types::File.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # <Warning>
      # This endpoint is deprecated. To export this data, use [Get transfer
      # details](/developers/api-reference/query/get-list-of-transfer-details) with the `exportFormat` query parameter
      # instead.
      # </Warning>
      #
      # Export a list of transfer details for an entrypoint. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Payabli::Types::ExportFormat1] :format
      # @option params [String] :entry
      # @option params [Integer] :transfer_id
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      # @option params [String, nil] :sort_by
      #
      # @return [Hash[String, Object]]
      def export_transfer_details(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        query_params["sortBy"] = params[:sort_by] if params.key?(:sort_by)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/transferDetails/#{URI.encode_uri_component(params[:format].to_s)}/#{URI.encode_uri_component(params[:entry].to_s)}/#{URI.encode_uri_component(params[:transfer_id].to_s)}",
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
          Payabli::Types::File.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # <Warning>
      # This endpoint is deprecated. To export this data, use [List
      # transfers](/developers/api-reference/query/get-list-of-transfers) with the `exportFormat` query parameter
      # instead.
      # </Warning>
      #
      # Get a list of transfers for an entrypoint. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :entry
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      # @option params [String, nil] :sort_by
      #
      # @return [Hash[String, Object]]
      def export_transfers(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        query_params["sortBy"] = params[:sort_by] if params.key?(:sort_by)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/transfers/#{URI.encode_uri_component(params[:entry].to_s)}",
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
          Payabli::Types::File.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # <Warning>
      # This endpoint is deprecated. To export this data, use [List vendors by
      # paypoint](/developers/api-reference/vendor/get-list-of-vendors-for-entrypoint) with the `exportFormat` query
      # parameter instead.
      # </Warning>
      #
      # Export a list of vendors for an entrypoint. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Payabli::Types::ExportFormat1] :format
      # @option params [String] :entry
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_vendors(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/vendors/#{URI.encode_uri_component(params[:format].to_s)}/#{URI.encode_uri_component(params[:entry].to_s)}",
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
          Payabli::Types::File.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # <Warning>
      # This endpoint is deprecated. To export this data, use [List vendors by
      # organization](/developers/api-reference/vendor/get-list-of-vendors-for-organization) with the `exportFormat`
      # query parameter instead.
      # </Warning>
      #
      # Export a list of vendors for an organization. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Payabli::Types::ExportFormat1] :format
      # @option params [Integer] :org_id
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_vendors_org(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/vendors/#{URI.encode_uri_component(params[:format].to_s)}/org/#{URI.encode_uri_component(params[:org_id].to_s)}",
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
          Payabli::Types::File.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
