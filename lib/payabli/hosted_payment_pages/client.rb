# frozen_string_literal: true

module Payabli
  module HostedPaymentPages
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Loads all of a payment page's details including `pageIdentifier` and `validationCode`. This endpoint requires an
      # `application` API token.
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
      # @return [Payabli::Types::PayabliPages]
      def load_page(request_options: {}, **params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Paypoint/load/#{params[:entry]}/#{params[:subdomain]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliPages.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      #
      # Creates a new payment page for a paypoint.
      # Note: this operation doesn't create a new paypoint, just a payment page for an existing paypoint. Paypoints are
      # created by the Payabli team when a boarding application is approved.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Types::PayabliPages]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :entry
      # @option params [String, nil] :idempotency_key
      #
      # @return [Payabli::Types::PayabliApiResponse00Responsedatanonobject]
      def new_page(request_options: {}, **params)
        path_param_names = %i[entry]
        body_params = params.except(*path_param_names)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "Paypoint/#{params[:entry]}",
          body: Payabli::Types::PayabliPages.new(body_params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponse00Responsedatanonobject.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Updates a payment page in a paypoint.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Types::PayabliPages]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :entry
      # @option params [String] :subdomain
      #
      # @return [Payabli::Types::PayabliApiResponse00Responsedatanonobject]
      def save_page(request_options: {}, **params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "Paypoint/#{params[:entry]}/#{params[:subdomain]}",
          body: Payabli::Types::PayabliPages.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponse00Responsedatanonobject.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
