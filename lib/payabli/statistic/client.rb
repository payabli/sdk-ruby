# frozen_string_literal: true

module Payabli
  module Statistic
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Retrieves the basic statistics for an organization or a paypoint over a date range, grouped by a frequency. The
      # response returns one row per time bucket. Counts and volumes cover approved transactions only and leave out
      # declines. Volumes are net of fees.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :mode
      # @option params [String] :freq
      # @option params [Integer] :level
      # @option params [Integer] :entry_id
      # @option params [String, nil] :end_date
      # @option params [String, nil] :start_date
      #
      # @example
      #   client.statistic.basic_stats(
      #     mode: "custom",
      #     freq: "m",
      #     level: 2,
      #     entry_id: 1000000,
      #     end_date: "2025-11-30",
      #     start_date: "2025-11-01"
      #   )
      #
      # @return [Array[Payabli::Types::StatBasicExtendedQueryRecord]]
      def basic_stats(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["endDate"] = params[:end_date] if params.key?(:end_date)
        query_params["startDate"] = params[:start_date] if params.key?(:start_date)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Statistic/basic/#{URI.encode_uri_component(params[:mode].to_s)}/#{URI.encode_uri_component(params[:freq].to_s)}/#{URI.encode_uri_component(params[:level].to_s)}/#{URI.encode_uri_component(params[:entry_id].to_s)}",
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
        return if code.between?(200, 299)

        error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # Retrieves the basic statistics for a customer over a date range, grouped by a frequency. This is a Pay In view:
      # it counts the customer's approved transactions and returns one row per time bucket. Volume here is the gross
      # amount, before fees.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :mode
      # @option params [String] :freq
      # @option params [Integer] :customer_id
      #
      # @example
      #   client.statistic.customer_basic_stats(
      #     mode: "m12",
      #     freq: "m",
      #     customer_id: 4440
      #   )
      #
      # @return [Array[Payabli::Types::StatCustomerBasicQueryRecord]]
      def customer_basic_stats(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Statistic/customerbasic/#{URI.encode_uri_component(params[:mode].to_s)}/#{URI.encode_uri_component(params[:freq].to_s)}/#{URI.encode_uri_component(params[:customer_id].to_s)}",
          headers: headers,
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

      # Retrieves subscription statistics for a paypoint or organization, bucketed by how soon active subscriptions are
      # due to renew. This is a forward-looking forecast of upcoming renewals, not charges already taken. Request a
      # single window with `interval`, or `all` to return every window in one call.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :interval
      # @option params [Integer] :level
      # @option params [Integer] :entry_id
      #
      # @example
      #   client.statistic.sub_stats(
      #     interval: "all",
      #     level: 2,
      #     entry_id: 1000000
      #   )
      #
      # @return [Array[Payabli::Types::SubscriptionStatsQueryRecord]]
      def sub_stats(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Statistic/subscriptions/#{URI.encode_uri_component(params[:interval].to_s)}/#{URI.encode_uri_component(params[:level].to_s)}/#{URI.encode_uri_component(params[:entry_id].to_s)}",
          headers: headers,
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

      # Retrieve the basic statistics about a vendor over a date range, grouped by frequency. The response returns one
      # row per time bucket, breaking the vendor's bills down by bill state (active, sent to approval, approved, in
      # transit, paid, and so on). Volumes are net of fees.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :mode
      # @option params [String] :freq
      # @option params [Integer] :id_vendor
      #
      # @example
      #   client.statistic.vendor_basic_stats(
      #     mode: "ytd",
      #     freq: "m",
      #     id_vendor: 1
      #   )
      #
      # @return [Array[Payabli::Types::StatisticsVendorQueryRecord]]
      def vendor_basic_stats(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Statistic/vendorbasic/#{URI.encode_uri_component(params[:mode].to_s)}/#{URI.encode_uri_component(params[:freq].to_s)}/#{URI.encode_uri_component(params[:id_vendor].to_s)}",
          headers: headers,
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
