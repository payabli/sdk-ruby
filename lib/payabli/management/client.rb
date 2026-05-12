# frozen_string_literal: true

module Payabli
  module Management
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Verifies a bank account and returns detailed verification results from the verification network, including bank
      # name, account status, and response codes. Unlike a pass/fail verification, this endpoint returns granular data
      # to support decision-making and troubleshooting.
      #
      # When bank authentication is enabled for the paypoint's organization, the endpoint performs an identity
      # verification check on the account holder. Otherwise, it performs an account existence check. When bank
      # authentication is enabled, the `accountHolderType` and `holderName` fields are required.
      #
      # Requires `inboundpayments_create` or `outboundpayments_create` permission.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Management::Types::VerifyAccountDetailsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :entry
      #
      # @return [Payabli::Management::Types::VerifyAccountDetailsResponse]
      def verify_account_details(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::Management::Types::VerifyAccountDetailsRequest.new(params).to_h
        non_body_param_names = %w[entry]
        body = request_data.except(*non_body_param_names)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "Management/verifyAccountDetails/#{URI.encode_uri_component(params[:entry].to_s)}",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Management::Types::VerifyAccountDetailsResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
