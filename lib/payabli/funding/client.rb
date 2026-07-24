# frozen_string_literal: true

module Payabli
  module Funding
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Deposits funds into a paypoint's available payout balance. Deposited funds enter a pending state and aren't
      # available for instant payouts until confirmed through FBO reconciliation.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Funding::Types::DepositFundsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.funding.deposit_funds(
      #     amount: 10,
      #     entrypoint: "48acde49",
      #     account_id: "333"
      #   )
      #
      # @return [Payabli::Types::DepositFundsResponse]
      def deposit_funds(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "Funding/depositFunds",
          headers: headers,
          body: Payabli::Funding::Types::DepositFundsRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::DepositFundsResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
