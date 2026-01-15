# frozen_string_literal: true

module PayabliSdk
  module CheckCapture
    class Client
      # @param client [PayabliSdk::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Captures a check for Remote Deposit Capture (RDC) using the provided check images and details. This endpoint
      # handles the OCR extraction of check data including MICR, routing number, account number, and amount. See the
      # [RDC guide](/developers/developer-guides/pay-in-rdc) for more details.
      #
      # @param request_options [Hash]
      # @param params [PayabliSdk::CheckCapture::Types::CheckCaptureRequestBody]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [PayabliSdk::CheckCapture::Types::CheckCaptureResponse]
      def check_processing(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        body_prop_names = %i[entry_point front_image rear_image check_amount]
        body_bag = params.slice(*body_prop_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "CheckCapture/CheckProcessing",
          body: PayabliSdk::CheckCapture::Types::CheckCaptureRequestBody.new(body_bag).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::CheckCapture::Types::CheckCaptureResponse.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
