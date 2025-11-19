# frozen_string_literal: true

module Payabli
  module HostedPaymentPages
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [Payabli::HostedPaymentPages::Client]
      def initialize(client:)
        @client = client
      end

      # Loads all of a payment page's details including `pageIdentifier` and `validationCode`. This endpoint requires an `application` API token.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::PayabliPages]
      def load_page(request_options: {}, **params)
        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "GET",
          path: "Paypoint/load/#{params[:entry]}/#{params[:subdomain]}"
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliPages.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      #
      # Creates a new payment page for a paypoint.
      # Note: this operation doesn't create a new paypoint, just a payment page for an existing paypoint. Paypoints are created by the Payabli team when a boarding application is approved.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Payabli::Types::PayabliPages]
      #
      # @return [Payabli::Types::PayabliApiResponse00Responsedatanonobject]
      def new_page(request_options: {}, **params)
        _path_param_names = %i[entry]
        _body = params.except(*_path_param_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "POST",
          path: "Paypoint/#{params[:entry]}",
          body: Payabli::Types::PayabliPages.new(_body).to_h
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponse00Responsedatanonobject.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Updates a payment page in a paypoint.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Payabli::Types::PayabliPages]
      #
      # @return [Payabli::Types::PayabliApiResponse00Responsedatanonobject]
      def save_page(request_options: {}, **params)
        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "PUT",
          path: "Paypoint/#{params[:entry]}/#{params[:subdomain]}",
          body: Payabli::Types::PayabliPages.new(params).to_h
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponse00Responsedatanonobject.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end
    end
  end
end
