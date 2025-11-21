# frozen_string_literal: true

module Payabli
  module Wallet
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Configure and activate Apple Pay for a Payabli organization
      #
      # @param request_options [Hash]
      # @param params [Payabli::Wallet::Types::ConfigureOrganizationRequestApplePay]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Payabli::Types::ConfigureApplePayOrganizationApiResponse]
      def configure_apple_pay_organization(request_options: {}, **params)
        _body_prop_names = %i[cascade is_enabled org_id]
        _body_bag = params.slice(*_body_prop_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "POST",
          path: "Wallet/applepay/configure-organization",
          body: Payabli::Wallet::Types::ConfigureOrganizationRequestApplePay.new(_body_bag).to_h
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::ConfigureApplePayOrganizationApiResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Configure and activate Apple Pay for a Payabli paypoint
      #
      # @param request_options [Hash]
      # @param params [Payabli::Wallet::Types::ConfigurePaypointRequestApplePay]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Payabli::Types::ConfigureApplePaypointApiResponse]
      def configure_apple_pay_paypoint(request_options: {}, **params)
        _body_prop_names = %i[entry is_enabled]
        _body_bag = params.slice(*_body_prop_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "POST",
          path: "Wallet/applepay/configure-paypoint",
          body: Payabli::Wallet::Types::ConfigurePaypointRequestApplePay.new(_body_bag).to_h
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::ConfigureApplePaypointApiResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Configure and activate Google Pay for a Payabli organization
      #
      # @param request_options [Hash]
      # @param params [Payabli::Wallet::Types::ConfigureOrganizationRequestGooglePay]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Payabli::Types::ConfigureApplePayOrganizationApiResponse]
      def configure_google_pay_organization(request_options: {}, **params)
        _body_prop_names = %i[cascade is_enabled org_id]
        _body_bag = params.slice(*_body_prop_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "POST",
          path: "Wallet/googlepay/configure-organization",
          body: Payabli::Wallet::Types::ConfigureOrganizationRequestGooglePay.new(_body_bag).to_h
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::ConfigureApplePayOrganizationApiResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Configure and activate Google Pay for a Payabli paypoint
      #
      # @param request_options [Hash]
      # @param params [Payabli::Wallet::Types::ConfigurePaypointRequestGooglePay]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Payabli::Types::ConfigureGooglePaypointApiResponse]
      def configure_google_pay_paypoint(request_options: {}, **params)
        _body_prop_names = %i[entry is_enabled]
        _body_bag = params.slice(*_body_prop_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "POST",
          path: "Wallet/googlepay/configure-paypoint",
          body: Payabli::Wallet::Types::ConfigurePaypointRequestGooglePay.new(_body_bag).to_h
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::ConfigureGooglePaypointApiResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end
    end
  end
end
