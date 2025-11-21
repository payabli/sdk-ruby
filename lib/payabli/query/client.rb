# frozen_string_literal: true

module Payabli
  module Query
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [Payabli::Query::Client]
      def initialize(client:)
        @client = client
      end

      # Retrieve a list of batches and their details, including settled and
      # unsettled transactions for a paypoint. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::QueryTypes::Types::QueryBatchesDetailResponse]
      def list_batch_details(request_options: {}, **params)
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
          path: "Query/batchDetails/#{params[:entry]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::QueryTypes::Types::QueryBatchesDetailResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Retrieve a list of batches and their details, including settled and unsettled transactions for an organization. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::QueryResponseSettlements]
      def list_batch_details_org(request_options: {}, **params)
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
          path: "Query/batchDetails/org/#{params[:org_id]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::QueryResponseSettlements.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Retrieve a list of batches for a paypoint. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::QueryTypes::Types::QueryBatchesResponse]
      def list_batches(request_options: {}, **params)
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
          path: "Query/batches/#{params[:entry]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::QueryTypes::Types::QueryBatchesResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Retrieve a list of batches for an org. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::QueryTypes::Types::QueryBatchesResponse]
      def list_batches_org(request_options: {}, **params)
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
          path: "Query/batches/org/#{params[:org_id]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::QueryTypes::Types::QueryBatchesResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Retrieve a list of MoneyOut batches for a paypoint. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::QueryBatchesOutResponse]
      def list_batches_out(request_options: {}, **params)
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
          path: "Query/batchesOut/#{params[:entry]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::QueryBatchesOutResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Retrieve a list of MoneyOut batches for an org. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::QueryBatchesOutResponse]
      def list_batches_out_org(request_options: {}, **params)
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
          path: "Query/batchesOut/org/#{params[:org_id]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::QueryBatchesOutResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Retrieves a list of chargebacks and returned transactions for a paypoint. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::QueryChargebacksResponse]
      def list_chargebacks(request_options: {}, **params)
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
          path: "Query/chargebacks/#{params[:entry]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::QueryChargebacksResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Retrieve a list of chargebacks and returned transactions for an org. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::QueryChargebacksResponse]
      def list_chargebacks_org(request_options: {}, **params)
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
          path: "Query/chargebacks/org/#{params[:org_id]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::QueryChargebacksResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Retrieves a list of customers for a paypoint. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::QueryCustomerResponse]
      def list_customers(request_options: {}, **params)
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
          path: "Query/customers/#{params[:entry]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::QueryCustomerResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Retrieves a list of customers for an org. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::QueryCustomerResponse]
      def list_customers_org(request_options: {}, **params)
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
          path: "Query/customers/org/#{params[:org_id]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::QueryCustomerResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Returns a list of all reports generated in the last 60 days for a single entrypoint. Use filters to limit results.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::QueryResponseNotificationReports]
      def list_notification_reports(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        _query_param_names = %i[from_record limit_record parameters sort_by]
        _query = {}
        _query["fromRecord"] = params[:from_record] if params.key?(:from_record)
        _query["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        _query["parameters"] = params[:parameters] if params.key?(:parameters)
        _query["sortBy"] = params[:sort_by] if params.key?(:sort_by)
        params = params.except(*_query_param_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "GET",
          path: "Query/notificationReports/#{params[:entry]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::QueryResponseNotificationReports.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Returns a list of all reports generated in the last 60 days for an organization. Use filters to limit results.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::QueryResponseNotificationReports]
      def list_notification_reports_org(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        _query_param_names = %i[from_record limit_record parameters sort_by]
        _query = {}
        _query["fromRecord"] = params[:from_record] if params.key?(:from_record)
        _query["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        _query["parameters"] = params[:parameters] if params.key?(:parameters)
        _query["sortBy"] = params[:sort_by] if params.key?(:sort_by)
        params = params.except(*_query_param_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "GET",
          path: "Query/notificationReports/org/#{params[:org_id]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::QueryResponseNotificationReports.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Returns a list of notifications for an entrypoint. Use filters to limit results.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::QueryResponseNotifications]
      def list_notifications(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        _query_param_names = %i[from_record limit_record parameters sort_by]
        _query = {}
        _query["fromRecord"] = params[:from_record] if params.key?(:from_record)
        _query["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        _query["parameters"] = params[:parameters] if params.key?(:parameters)
        _query["sortBy"] = params[:sort_by] if params.key?(:sort_by)
        params = params.except(*_query_param_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "GET",
          path: "Query/notifications/#{params[:entry]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::QueryResponseNotifications.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Return a list of notifications for an organization. Use filters to limit results.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::QueryResponseNotifications]
      def list_notifications_org(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        _query_param_names = %i[from_record limit_record parameters sort_by]
        _query = {}
        _query["fromRecord"] = params[:from_record] if params.key?(:from_record)
        _query["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        _query["parameters"] = params[:parameters] if params.key?(:parameters)
        _query["sortBy"] = params[:sort_by] if params.key?(:sort_by)
        params = params.except(*_query_param_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "GET",
          path: "Query/notifications/org/#{params[:org_id]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::QueryResponseNotifications.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Retrieves a list of an organization's suborganizations and their full details such as orgId, users, and settings. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::QueryTypes::Types::ListOrganizationsResponse]
      def list_organizations(request_options: {}, **params)
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
          path: "Query/organizations/#{params[:org_id]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::QueryTypes::Types::ListOrganizationsResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Retrieves a list of money out transactions (payouts) for a paypoint. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::QueryPayoutTransaction]
      def list_payout(request_options: {}, **params)
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
          path: "Query/payouts/#{params[:entry]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::QueryPayoutTransaction.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Retrieves a list of money out transactions (payouts) for an organization. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::QueryPayoutTransaction]
      def list_payout_org(request_options: {}, **params)
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
          path: "Query/payouts/org/#{params[:org_id]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::QueryPayoutTransaction.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Returns a list of paypoints in an organization. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::QueryEntrypointResponse]
      def list_paypoints(request_options: {}, **params)
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
          path: "Query/paypoints/#{params[:org_id]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::QueryEntrypointResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Retrieve a list of settled transactions for a paypoint. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::QueryResponseSettlements]
      def list_settlements(request_options: {}, **params)
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
          path: "Query/settlements/#{params[:entry]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::QueryResponseSettlements.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Retrieve a list of settled transactions for an organization. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::QueryResponseSettlements]
      def list_settlements_org(request_options: {}, **params)
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
          path: "Query/settlements/org/#{params[:org_id]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::QueryResponseSettlements.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Returns a list of subscriptions for a single paypoint. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::QuerySubscriptionResponse]
      def list_subscriptions(request_options: {}, **params)
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
          path: "Query/subscriptions/#{params[:entry]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::QuerySubscriptionResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Returns a list of subscriptions for a single org. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::QuerySubscriptionResponse]
      def list_subscriptions_org(request_options: {}, **params)
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
          path: "Query/subscriptions/org/#{params[:org_id]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::QuerySubscriptionResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Retrieve a list of transactions for a paypoint. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
      # By default, this endpoint returns only transactions from the last 60 days. To query transactions outside of this period, include `transactionDate` filters.
      # For example, this request parameters filter for transactions between April 01, 2024 and April 09, 2024.
      # ``` curl --request GET \
      #   --url https://sandbox.payabli.com/api/Query/transactions/org/1?limitRecord=20&fromRecord=0&transactionDate(ge)=2024-04-01T00:00:00&transactionDate(le)=2024-04-09T23:59:59\
      #   --header 'requestToken: <api-key>'
      #
      #   ```
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::QueryResponseTransactions]
      def list_transactions(request_options: {}, **params)
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
          path: "Query/transactions/#{params[:entry]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::QueryResponseTransactions.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      #
      # Retrieve a list of transactions for an organization. Use filters to
      # limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
      #
      #
      # By default, this endpoint returns only transactions from the last 60 days. To query transactions outside of this period, include `transactionDate` filters.
      #
      # For example, this request parameters filter for transactions between April 01, 2024 and April 09, 2024.
      #
      # ```
      # curl --request GET \
      #   --url https://sandbox.payabli.com/api/Query/transactions/org/1?limitRecord=20&fromRecord=0&transactionDate(ge)=2024-04-01T00:00:00&transactionDate(le)=2024-04-09T23:59:59\
      #   --header 'requestToken: <api-key>'
      #
      #   ```
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::QueryResponseTransactions]
      def list_transactions_org(request_options: {}, **params)
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
          path: "Query/transactions/org/#{params[:org_id]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::QueryResponseTransactions.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Retrieve a list of transfer details records for a paypoint. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::QueryTypes::Types::QueryTransferDetailResponse]
      def list_transfer_details(request_options: {}, **params)
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
          path: "Query/transferDetails/#{params[:entry]}/#{params[:transfer_id]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::QueryTypes::Types::QueryTransferDetailResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Retrieve a list of transfers for a paypoint. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::TransferQueryResponse]
      def list_transfers(request_options: {}, **params)
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
          path: "Query/transfers/#{params[:entry]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::TransferQueryResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Retrieve a list of transfers for an org. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::TransferQueryResponse]
      def list_transfers_org(request_options: {}, **params)
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
          path: "Query/transfers/org/#{params[:org_id]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::TransferQueryResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Get list of users for an org. Use filters to limit results.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::QueryUserResponse]
      def list_users_org(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        _query_param_names = %i[from_record limit_record parameters sort_by]
        _query = {}
        _query["fromRecord"] = params[:from_record] if params.key?(:from_record)
        _query["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        _query["parameters"] = params[:parameters] if params.key?(:parameters)
        _query["sortBy"] = params[:sort_by] if params.key?(:sort_by)
        params = params.except(*_query_param_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "GET",
          path: "Query/users/org/#{params[:org_id]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::QueryUserResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Get list of users for a paypoint. Use filters to limit results.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::QueryUserResponse]
      def list_users_paypoint(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        _query_param_names = %i[from_record limit_record parameters sort_by]
        _query = {}
        _query["fromRecord"] = params[:from_record] if params.key?(:from_record)
        _query["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        _query["parameters"] = params[:parameters] if params.key?(:parameters)
        _query["sortBy"] = params[:sort_by] if params.key?(:sort_by)
        params = params.except(*_query_param_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "GET",
          path: "Query/users/point/#{params[:entry]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::QueryUserResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Retrieve a list of vendors for an entrypoint. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::QueryResponseVendors]
      def list_vendors(request_options: {}, **params)
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
          path: "Query/vendors/#{params[:entry]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::QueryResponseVendors.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Retrieve a list of vendors for an organization. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::QueryResponseVendors]
      def list_vendors_org(request_options: {}, **params)
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
          path: "Query/vendors/org/#{params[:org_id]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::QueryResponseVendors.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Retrieve a list of vcards (virtual credit cards) issued for an entrypoint. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::VCardQueryResponse]
      def list_vcards(request_options: {}, **params)
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
          path: "Query/vcards/#{params[:entry]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::VCardQueryResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Retrieve a list of vcards (virtual credit cards) issued for an organization. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::VCardQueryResponse]
      def list_vcards_org(request_options: {}, **params)
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
          path: "Query/vcards/org/#{params[:org_id]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::VCardQueryResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end
    end
  end
end
