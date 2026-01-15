# frozen_string_literal: true

module PayabliSdk
  module Statistic
    class Client
      # @param client [PayabliSdk::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Retrieves the basic statistics for an organization or a paypoint, for a given time period, grouped by a
      # particular frequency.
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
      # @option params [Hash[String, String, nil], nil] :parameters
      # @option params [String, nil] :start_date
      #
      # @return [Array[PayabliSdk::Statistic::Types::StatBasicExtendedQueryRecord]]
      def basic_stats(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[end_date parameters start_date]
        query_params = {}
        query_params["endDate"] = params[:end_date] if params.key?(:end_date)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        query_params["startDate"] = params[:start_date] if params.key?(:start_date)
        params = params.except(*query_param_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Statistic/basic/#{params[:mode]}/#{params[:freq]}/#{params[:level]}/#{params[:entry_id]}",
          query: query_params,
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

      # Retrieves the basic statistics for a customer for a specific time period, grouped by a selected frequency.
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
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Array[PayabliSdk::Statistic::Types::SubscriptionStatsQueryRecord]]
      def customer_basic_stats(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[parameters]
        query_params = {}
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        params = params.except(*query_param_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Statistic/customerbasic/#{params[:mode]}/#{params[:freq]}/#{params[:customer_id]}",
          query: query_params,
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

      # Retrieves the subscription statistics for a given interval for a paypoint or organization.
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
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Array[PayabliSdk::Statistic::Types::StatBasicQueryRecord]]
      def sub_stats(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[parameters]
        query_params = {}
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        params = params.except(*query_param_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Statistic/subscriptions/#{params[:interval]}/#{params[:level]}/#{params[:entry_id]}",
          query: query_params,
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

      # Retrieve the basic statistics about a vendor for a given time period, grouped by frequency.
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
      # @option params [Hash[String, String, nil], nil] :parameters
      #
      # @return [Array[PayabliSdk::Statistic::Types::StatisticsVendorQueryRecord]]
      def vendor_basic_stats(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[parameters]
        query_params = {}
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        params = params.except(*query_param_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Statistic/vendorbasic/#{params[:mode]}/#{params[:freq]}/#{params[:id_vendor]}",
          query: query_params,
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
