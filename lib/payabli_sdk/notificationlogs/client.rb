# frozen_string_literal: true

module PayabliSdk
  module Notificationlogs
    class Client
      # @param client [PayabliSdk::Internal::Http::RawClient]
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
      # @param params [PayabliSdk::Notificationlogs::Types::NotificationLogSearchRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer, nil] :page_size
      # @option params [Integer, nil] :page
      #
      # @return [Array[PayabliSdk::Notificationlogs::Types::NotificationLog]]
      def search_notification_logs(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[page_size page]
        query_params = {}
        query_params["PageSize"] = params[:page_size] if params.key?(:page_size)
        query_params["Page"] = params[:page] if params.key?(:page)
        params = params.except(*query_param_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "/v2/notificationlogs",
          query: query_params,
          body: PayabliSdk::Notificationlogs::Types::NotificationLogSearchRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
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
      # @return [PayabliSdk::Notificationlogs::Types::NotificationLogDetail]
      def get_notification_log(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "/v2/notificationlogs/#{params[:uuid]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Notificationlogs::Types::NotificationLogDetail.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
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
      # @return [PayabliSdk::Notificationlogs::Types::NotificationLogDetail]
      def retry_notification_log(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "/v2/notificationlogs/#{params[:uuid]}/retry",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Notificationlogs::Types::NotificationLogDetail.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retry sending multiple notifications (maximum 50 IDs).
      # This is an async process, so use the search endpoint again to check the notification status.
      #
      # This endpoint requires the `notifications_create` permission.
      #
      # @param request_options [Hash]
      # @param params [PayabliSdk::Notificationlogs::Types::BulkRetryRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [untyped]
      def bulk_retry_notification_logs(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "/v2/notificationlogs/retry",
          body: params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end
    end
  end
end
