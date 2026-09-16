# frozen_string_literal: true

module Payabli
  module Taptopay
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Issues a short-lived activation code for a Tap to Pay device in the
      # `Pending` state. This endpoint is for Tap to Pay devices only.
      # Deliver the code to the device to complete activation.
      #
      # A code is valid for 30 minutes after it's issued. Calling this
      # endpoint again for the same device before the code expires returns
      # the same code, with `alreadyIssued` set to `true`, instead of
      # generating a new one. A new code is only generated when no valid
      # code exists.
      #
      # Authenticate with an OAuth2 bearer token that has the `pos_create`
      # permission. See [Accept Tap to Pay payments](/guides/pay-in-developer-tap-to-pay)
      # for the full integration guide.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Taptopay::Types::TapToPayActivationChallengeRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.taptopay.activation_challenge(
      #     entry: "8cfec329267",
      #     device_id: "499585-389fj484-3jcj8hj3"
      #   )
      #
      # @return [Payabli::Types::TapToPayActivationChallengeResponse]
      def activation_challenge(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/device/taptopay/activate/challenge",
          headers: headers,
          body: Payabli::Taptopay::Types::TapToPayActivationChallengeRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::TapToPayActivationChallengeResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
