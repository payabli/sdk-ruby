# frozen_string_literal: true

module Payabli
  module Notificationlogs
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Search notification logs with filtering and pagination.
      #   - Start date and end date cannot be more than 30 days apart
      #   - Either `orgId` or `paypointId` must be provided
      #
      # This endpoint requires the `notifications_create` OR `notifications_read` permission.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Notificationlogs::Types::NotificationLogSearchRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer, nil] :page_size
      # @option params [Integer, nil] :page
      #
      # @return [Array[Payabli::Notificationlogs::Types::NotificationLog]]
      def search_notification_logs(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        _query_param_names = %i[page_size page]
        _query = {}
        _query["PageSize"] = params[:page_size] if params.key?(:page_size)
        _query["Page"] = params[:page] if params.key?(:page)
        params = params.except(*_query_param_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "POST",
          path: "/v2/notificationlogs",
          query: _query,
          body: Payabli::Notificationlogs::Types::NotificationLogSearchRequest.new(params).to_h
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

      # Get detailed information for a specific notification log entry.
      # This endpoint requires the `notifications_create` OR `notifications_read` permission.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :uuid
      #
      # @return [Payabli::Notificationlogs::Types::NotificationLogDetail]
      def get_notification_log(request_options: {}, **params)
        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "GET",
          path: "/v2/notificationlogs/#{params[:uuid]}"
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Notificationlogs::Types::NotificationLogDetail.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Retry sending a specific notification.
      #
      # **Permissions:** notifications_create
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :uuid
      #
      # @return [Payabli::Notificationlogs::Types::NotificationLogDetail]
      def retry_notification_log(request_options: {}, **params)
        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "GET",
          path: "/v2/notificationlogs/#{params[:uuid]}/retry"
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Notificationlogs::Types::NotificationLogDetail.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Retry sending multiple notifications (maximum 50 IDs).
      # This is an async process, so use the search endpoint again to check the notification status.
      #
      # This endpoint requires the `notifications_create` permission.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Notificationlogs::Types::BulkRetryRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [untyped]
      def bulk_retry_notification_logs(request_options: {}, **params)
        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "POST",
          path: "/v2/notificationlogs/retry",
          body: Payabli::Notificationlogs::Types::BulkRetryRequest.new(params).to_h
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
