# frozen_string_literal: true

module PayabliSdk
  module Wallet
    class Client
      # @param client [PayabliSdk::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Configure and activate Apple Pay for a Payabli organization
      #
      # @param request_options [Hash]
      # @param params [PayabliSdk::Wallet::Types::ConfigureOrganizationRequestApplePay]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [PayabliSdk::Types::ConfigureApplePayOrganizationApiResponse]
      def configure_apple_pay_organization(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        body_prop_names = %i[cascade is_enabled org_id]
        body_bag = params.slice(*body_prop_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "Wallet/applepay/configure-organization",
          body: PayabliSdk::Wallet::Types::ConfigureOrganizationRequestApplePay.new(body_bag).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::ConfigureApplePayOrganizationApiResponse.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Configure and activate Apple Pay for a Payabli paypoint
      #
      # @param request_options [Hash]
      # @param params [PayabliSdk::Wallet::Types::ConfigurePaypointRequestApplePay]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [PayabliSdk::Types::ConfigureApplePaypointApiResponse]
      def configure_apple_pay_paypoint(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        body_prop_names = %i[entry is_enabled]
        body_bag = params.slice(*body_prop_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "Wallet/applepay/configure-paypoint",
          body: PayabliSdk::Wallet::Types::ConfigurePaypointRequestApplePay.new(body_bag).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::ConfigureApplePaypointApiResponse.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Configure and activate Google Pay for a Payabli organization
      #
      # @param request_options [Hash]
      # @param params [PayabliSdk::Wallet::Types::ConfigureOrganizationRequestGooglePay]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [PayabliSdk::Types::ConfigureApplePayOrganizationApiResponse]
      def configure_google_pay_organization(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        body_prop_names = %i[cascade is_enabled org_id]
        body_bag = params.slice(*body_prop_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "Wallet/googlepay/configure-organization",
          body: PayabliSdk::Wallet::Types::ConfigureOrganizationRequestGooglePay.new(body_bag).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::ConfigureApplePayOrganizationApiResponse.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Configure and activate Google Pay for a Payabli paypoint
      #
      # @param request_options [Hash]
      # @param params [PayabliSdk::Wallet::Types::ConfigurePaypointRequestGooglePay]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [PayabliSdk::Types::ConfigureGooglePaypointApiResponse]
      def configure_google_pay_paypoint(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        body_prop_names = %i[entry is_enabled]
        body_bag = params.slice(*body_prop_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "Wallet/googlepay/configure-paypoint",
          body: PayabliSdk::Wallet::Types::ConfigurePaypointRequestGooglePay.new(body_bag).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::ConfigureGooglePaypointApiResponse.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
