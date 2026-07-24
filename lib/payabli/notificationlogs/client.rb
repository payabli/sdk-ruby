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
      # @param params [Payabli::Notificationlogs::Types::SearchNotificationLogsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer, nil] :page_size
      # @option params [Integer, nil] :page
      #
      # @example
      #   client.notificationlogs.search_notification_logs(
      #     page_size: 20,
      #     start_date: "2024-01-01T00:00:00Z",
      #     end_date: "2024-01-31T23:59:59Z",
      #     notification_event: "ActivatedMerchant",
      #     succeeded: true,
      #     org_id: 123
      #   )
      #
      # @return [Array[Payabli::Types::NotificationLog]]
      def search_notification_logs(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::Notificationlogs::Types::SearchNotificationLogsRequest.new(params).to_h
        non_body_param_names = %w[PageSize Page]
        body = request_data.except(*non_body_param_names)

        query_params = {}
        query_params["PageSize"] = params[:page_size] if params.key?(:page_size)
        query_params["Page"] = params[:page] if params.key?(:page)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/notificationlogs",
          headers: headers,
          query: query_params,
          body: body,
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
      # @example
      #   client.notificationlogs.get_notification_log(uuid: "550e8400-e29b-41d4-a716-446655440000")
      #
      # @return [Payabli::Types::NotificationLogDetail]
      def get_notification_log(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/notificationlogs/#{URI.encode_uri_component(params[:uuid].to_s)}",
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
          Payabli::Types::NotificationLogDetail.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
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
      # @example
      #   client.notificationlogs.retry_notification_log(uuid: "550e8400-e29b-41d4-a716-446655440000")
      #
      # @return [Payabli::Types::NotificationLogDetail]
      def retry_notification_log(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/notificationlogs/#{URI.encode_uri_component(params[:uuid].to_s)}/retry",
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
          Payabli::Types::NotificationLogDetail.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retry sending multiple notifications (maximum 50 IDs).
      # This is an async process, so use the search endpoint again to check the notification status.
      #
      # This endpoint requires the `notifications_create` permission.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Types::BulkRetryRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.notificationlogs.bulk_retry_notification_logs(request: %w[550e8400-e29b-41d4-a716-446655440000 550e8400-e29b-41d4-a716-446655440001 550e8400-e29b-41d4-a716-446655440002])
      #
      # @return [untyped]
      def bulk_retry_notification_logs(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/notificationlogs/retry",
          headers: headers,
          body: params,
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
