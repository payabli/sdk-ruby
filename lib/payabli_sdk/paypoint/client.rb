# frozen_string_literal: true

module PayabliSdk
  module Paypoint
    class Client
      # @param client [PayabliSdk::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Gets the basic details for a paypoint.
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
      # @return [PayabliSdk::Paypoint::Types::GetBasicEntryResponse]
      def get_basic_entry(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Paypoint/basic/#{params[:entry]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Paypoint::Types::GetBasicEntryResponse.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves the basic details for a paypoint by ID.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id_paypoint
      #
      # @return [PayabliSdk::Paypoint::Types::GetBasicEntryByIdResponse]
      def get_basic_entry_by_id(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Paypoint/basicById/#{params[:id_paypoint]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Paypoint::Types::GetBasicEntryByIdResponse.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Gets the details for a single paypoint.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :entry
      # @option params [String, nil] :entrypages
      #
      # @return [PayabliSdk::Paypoint::Types::GetEntryConfigResponse]
      def get_entry_config(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[entrypages]
        query_params = {}
        query_params["entrypages"] = params[:entrypages] if params.key?(:entrypages)
        params = params.except(*query_param_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Paypoint/#{params[:entry]}",
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
          PayabliSdk::Paypoint::Types::GetEntryConfigResponse.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Gets the details for single payment page for a paypoint.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :entry
      # @option params [String] :subdomain
      #
      # @return [PayabliSdk::Types::PayabliPages]
      def get_page(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Paypoint/#{params[:entry]}/#{params[:subdomain]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::PayabliPages.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Deletes a payment page in a paypoint.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :entry
      # @option params [String] :subdomain
      #
      # @return [PayabliSdk::Types::PayabliApiResponseGeneric2Part]
      def remove_page(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "Paypoint/#{params[:entry]}/#{params[:subdomain]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::PayabliApiResponseGeneric2Part.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Updates a paypoint logo.
      #
      # @param request_options [Hash]
      # @param params [PayabliSdk::Types::FileContent]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :entry
      #
      # @return [PayabliSdk::Types::PayabliApiResponse00Responsedatanonobject]
      def save_logo(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "Paypoint/logo/#{params[:entry]}",
          body: PayabliSdk::Types::FileContent.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::PayabliApiResponse00Responsedatanonobject.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves an paypoint's basic settings like custom fields, identifiers, and invoicing settings.
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
      # @return [PayabliSdk::Types::SettingsQueryRecord]
      def settings_page(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Paypoint/settings/#{params[:entry]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::SettingsQueryRecord.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Migrates a paypoint to a new parent organization.
      #
      # @param request_options [Hash]
      # @param params [PayabliSdk::Paypoint::Types::PaypointMoveRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [PayabliSdk::Paypoint::Types::MigratePaypointResponse]
      def migrate(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "Paypoint/migrate",
          body: PayabliSdk::Paypoint::Types::PaypointMoveRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Paypoint::Types::MigratePaypointResponse.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
