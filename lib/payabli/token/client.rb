# frozen_string_literal: true

module Payabli
  module Token
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Exchanges a client ID and client secret for a short-lived Bearer access token using the OAuth2
      # client-credentials flow. Designed for server-to-server use: the credentials and the returned token stay on your
      # backend. Send the returned `access_token` in the `Authorization` header as `Bearer <access_token>` on subsequent
      # API calls. See the [OAuth authentication guide](/developers/oauth-authentication) for the full flow.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Token::Types::CreateServerSideTokenRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Payabli::Types::PayabliAccessTokenResponse]
      def create_server_side_token(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/Token/serverside",
          body: Payabli::Token::Types::CreateServerSideTokenRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliAccessTokenResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
