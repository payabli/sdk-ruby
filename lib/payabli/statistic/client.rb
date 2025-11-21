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

      # Retrieves the basic statistics for an organization or a paypoint, for a given time period, grouped by a particular frequency.
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
      # @return [Array[Payabli::Statistic::Types::StatBasicQueryRecord]]
      def basic_stats(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        _query_param_names = %i[end_date parameters start_date]
        _query = {}
        _query["endDate"] = params[:end_date] if params.key?(:end_date)
        _query["parameters"] = params[:parameters] if params.key?(:parameters)
        _query["startDate"] = params[:start_date] if params.key?(:start_date)
        params = params.except(*_query_param_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "GET",
          path: "Statistic/basic/#{params[:mode]}/#{params[:freq]}/#{params[:level]}/#{params[:entry_id]}",
          query: _query
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
      # @return [Array[Payabli::Statistic::Types::SubscriptionStatsQueryRecord]]
      def customer_basic_stats(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        _query_param_names = %i[parameters]
        _query = {}
        _query["parameters"] = params[:parameters] if params.key?(:parameters)
        params = params.except(*_query_param_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "GET",
          path: "Statistic/customerbasic/#{params[:mode]}/#{params[:freq]}/#{params[:customer_id]}",
          query: _query
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
      # @return [Array[Payabli::Statistic::Types::StatBasicQueryRecord]]
      def sub_stats(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        _query_param_names = %i[parameters]
        _query = {}
        _query["parameters"] = params[:parameters] if params.key?(:parameters)
        params = params.except(*_query_param_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "GET",
          path: "Statistic/subscriptions/#{params[:interval]}/#{params[:level]}/#{params[:entry_id]}",
          query: _query
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
      # @return [Array[Payabli::Statistic::Types::StatisticsVendorQueryRecord]]
      def vendor_basic_stats(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        _query_param_names = %i[parameters]
        _query = {}
        _query["parameters"] = params[:parameters] if params.key?(:parameters)
        params = params.except(*_query_param_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "GET",
          path: "Statistic/vendorbasic/#{params[:mode]}/#{params[:freq]}/#{params[:id_vendor]}",
          query: _query
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
