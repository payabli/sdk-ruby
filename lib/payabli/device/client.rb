# frozen_string_literal: true

module Payabli
  module Device
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Generates a one-time, 6-digit verification code for activating a
      # semi-integrated card-present device in a paypoint. This endpoint is
      # for AXIUM devices only. After calling this endpoint, an operator
      # enters the returned code on the device's terminal, along with a
      # device name, to register the device to the paypoint resolved from
      # `{entry}`.
      #
      # A code expires 5 minutes after it's issued. A paypoint can have several
      # codes active at once — for example, when activating a batch of devices —
      # and a code binds to whichever device enters it first.
      #
      # Authenticate with an OAuth2 bearer token that has the `device_registry` scope.
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
      # @example
      #   client.device.challenge(entry: "8cfec329267")
      #
      # @return [Payabli::Types::DeviceChallengeResponse]
      def challenge(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "Device/challenge/#{URI.encode_uri_component(params[:entry].to_s)}",
          headers: headers,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::DeviceChallengeResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
