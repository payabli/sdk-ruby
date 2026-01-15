# frozen_string_literal: true

module PayabliSdk
  module Export
    class Client
      # @param client [PayabliSdk::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Export a list of boarding applications for an organization. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [PayabliSdk::Export::Types::ExportFormat1] :format
      # @option params [Integer] :org_id
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_applications(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[columns_export from_record limit_record parameters]
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        params = params.except(*query_param_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/boarding/#{params[:format]}/#{params[:org_id]}",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::File.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # This endpoint is deprecated. Export batch details for a paypoint. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [PayabliSdk::Export::Types::ExportFormat1] :format
      # @option params [String] :entry
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_batch_details(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[columns_export from_record limit_record parameters]
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        params = params.except(*query_param_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/batchDetails/#{params[:format]}/#{params[:entry]}",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::File.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # This endpoint is deprecated. Export batch details for an organization. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [PayabliSdk::Export::Types::ExportFormat1] :format
      # @option params [Integer] :org_id
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_batch_details_org(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[columns_export from_record limit_record parameters]
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        params = params.except(*query_param_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/batchDetails/#{params[:format]}/org/#{params[:org_id]}",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::File.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Export a list of batches for an entrypoint. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [PayabliSdk::Export::Types::ExportFormat1] :format
      # @option params [String] :entry
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_batches(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[columns_export from_record limit_record parameters]
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        params = params.except(*query_param_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/batches/#{params[:format]}/#{params[:entry]}",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::File.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Export a list of batches for an organization. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [PayabliSdk::Export::Types::ExportFormat1] :format
      # @option params [Integer] :org_id
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_batches_org(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[columns_export from_record limit_record parameters]
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        params = params.except(*query_param_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/batches/#{params[:format]}/org/#{params[:org_id]}",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::File.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Export a list of money out batches for a paypoint. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [PayabliSdk::Export::Types::ExportFormat1] :format
      # @option params [String] :entry
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_batches_out(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[columns_export from_record limit_record parameters]
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        params = params.except(*query_param_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/batchesOut/#{params[:format]}/#{params[:entry]}",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::File.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Export a list of money out batches for an organization. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [PayabliSdk::Export::Types::ExportFormat1] :format
      # @option params [Integer] :org_id
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_batches_out_org(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[columns_export from_record limit_record parameters]
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        params = params.except(*query_param_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/batchesOut/#{params[:format]}/org/#{params[:org_id]}",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::File.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Export a list of bills for an entrypoint. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [PayabliSdk::Export::Types::ExportFormat1] :format
      # @option params [String] :entry
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_bills(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[columns_export from_record limit_record parameters]
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        params = params.except(*query_param_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/bills/#{params[:format]}/#{params[:entry]}",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::File.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Export a list of bills for an organization. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [PayabliSdk::Export::Types::ExportFormat1] :format
      # @option params [Integer] :org_id
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_bills_org(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[columns_export from_record limit_record parameters]
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        params = params.except(*query_param_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/bills/#{params[:format]}/org/#{params[:org_id]}",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::File.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Export a list of chargebacks and ACH returns for an entrypoint. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [PayabliSdk::Export::Types::ExportFormat1] :format
      # @option params [String] :entry
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_chargebacks(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[columns_export from_record limit_record parameters]
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        params = params.except(*query_param_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/chargebacks/#{params[:format]}/#{params[:entry]}",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::File.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Export a list of chargebacks and ACH returns for an organization. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [PayabliSdk::Export::Types::ExportFormat1] :format
      # @option params [Integer] :org_id
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_chargebacks_org(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[columns_export from_record limit_record parameters]
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        params = params.except(*query_param_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/chargebacks/#{params[:format]}/org/#{params[:org_id]}",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::File.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Export a list of customers for an entrypoint. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [PayabliSdk::Export::Types::ExportFormat1] :format
      # @option params [String] :entry
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_customers(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[columns_export from_record limit_record parameters]
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        params = params.except(*query_param_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/customers/#{params[:format]}/#{params[:entry]}",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::File.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Exports a list of customers for an organization. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [PayabliSdk::Export::Types::ExportFormat1] :format
      # @option params [Integer] :org_id
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_customers_org(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[columns_export from_record limit_record parameters]
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        params = params.except(*query_param_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/customers/#{params[:format]}/org/#{params[:org_id]}",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::File.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Export list of invoices for an entrypoint. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [PayabliSdk::Export::Types::ExportFormat1] :format
      # @option params [String] :entry
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_invoices(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[columns_export from_record limit_record parameters]
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        params = params.except(*query_param_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/invoices/#{params[:format]}/#{params[:entry]}",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::File.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Export a list of invoices for an organization. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [PayabliSdk::Export::Types::ExportFormat1] :format
      # @option params [Integer] :org_id
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_invoices_org(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[columns_export from_record limit_record parameters]
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        params = params.except(*query_param_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/invoices/#{params[:format]}/org/#{params[:org_id]}",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::File.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Export a list of child organizations (suborganizations) for a parent organization.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [PayabliSdk::Export::Types::ExportFormat1] :format
      # @option params [Integer] :org_id
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_organizations(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[columns_export from_record limit_record parameters]
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        params = params.except(*query_param_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/organizations/#{params[:format]}/org/#{params[:org_id]}",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::File.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Export a list of payouts and their statuses for an entrypoint. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [PayabliSdk::Export::Types::ExportFormat1] :format
      # @option params [String] :entry
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_payout(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[columns_export from_record limit_record parameters]
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        params = params.except(*query_param_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/payouts/#{params[:format]}/#{params[:entry]}",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::File.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Export a list of payouts and their details for an organization. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [PayabliSdk::Export::Types::ExportFormat1] :format
      # @option params [Integer] :org_id
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_payout_org(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[columns_export from_record limit_record parameters]
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        params = params.except(*query_param_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/payouts/#{params[:format]}/org/#{params[:org_id]}",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::File.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Export a list of paypoints in an organization. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [PayabliSdk::Export::Types::ExportFormat1] :format
      # @option params [Integer] :org_id
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_paypoints(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[columns_export from_record limit_record parameters]
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        params = params.except(*query_param_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/paypoints/#{params[:format]}/#{params[:org_id]}",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::File.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Export a list of settled transactions for an entrypoint. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [PayabliSdk::Export::Types::ExportFormat1] :format
      # @option params [String] :entry
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_settlements(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[columns_export from_record limit_record parameters]
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        params = params.except(*query_param_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/settlements/#{params[:format]}/#{params[:entry]}",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::File.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Export a list of settled transactions for an organization. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [PayabliSdk::Export::Types::ExportFormat1] :format
      # @option params [Integer] :org_id
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_settlements_org(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[columns_export from_record limit_record parameters]
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        params = params.except(*query_param_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/settlements/#{params[:format]}/org/#{params[:org_id]}",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::File.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Export a list of subscriptions for an entrypoint. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [PayabliSdk::Export::Types::ExportFormat1] :format
      # @option params [String] :entry
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_subscriptions(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[columns_export from_record limit_record parameters]
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        params = params.except(*query_param_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/subscriptions/#{params[:format]}/#{params[:entry]}",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::File.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Export a list of subscriptions for an organization. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [PayabliSdk::Export::Types::ExportFormat1] :format
      # @option params [Integer] :org_id
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_subscriptions_org(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[columns_export from_record limit_record parameters]
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        params = params.except(*query_param_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/subscriptions/#{params[:format]}/org/#{params[:org_id]}",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::File.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Export a list of transactions for an entrypoint in a file in XLXS or CSV format. Use filters to limit results.
      # If you don't specify a date range in the request, the last two months of data are returned.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [PayabliSdk::Export::Types::ExportFormat1] :format
      # @option params [String] :entry
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_transactions(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[columns_export from_record limit_record parameters]
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        params = params.except(*query_param_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/transactions/#{params[:format]}/#{params[:entry]}",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::File.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

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
      # @option params [PayabliSdk::Export::Types::ExportFormat1] :format
      # @option params [Integer] :org_id
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_transactions_org(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[columns_export from_record limit_record parameters]
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        params = params.except(*query_param_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/transactions/#{params[:format]}/org/#{params[:org_id]}",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::File.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Export a list of transfer details for an entrypoint. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [PayabliSdk::Export::Types::ExportFormat1] :format
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
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[columns_export from_record limit_record parameters sort_by]
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        query_params["sortBy"] = params[:sort_by] if params.key?(:sort_by)
        params = params.except(*query_param_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/transferDetails/#{params[:format]}/#{params[:entry]}/#{params[:transfer_id]}",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::File.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

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
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[columns_export from_record limit_record parameters sort_by]
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        query_params["sortBy"] = params[:sort_by] if params.key?(:sort_by)
        params = params.except(*query_param_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/transfers/#{params[:entry]}",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::File.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Export a list of vendors for an entrypoint. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [PayabliSdk::Export::Types::ExportFormat1] :format
      # @option params [String] :entry
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_vendors(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[columns_export from_record limit_record parameters]
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        params = params.except(*query_param_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/vendors/#{params[:format]}/#{params[:entry]}",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::File.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Export a list of vendors for an organization. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [PayabliSdk::Export::Types::ExportFormat1] :format
      # @option params [Integer] :org_id
      # @option params [String, nil] :columns_export
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Hash[String, Object]]
      def export_vendors_org(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[columns_export from_record limit_record parameters]
        query_params = {}
        query_params["columnsExport"] = params[:columns_export] if params.key?(:columns_export)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        params = params.except(*query_param_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Export/vendors/#{params[:format]}/org/#{params[:org_id]}",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::File.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
