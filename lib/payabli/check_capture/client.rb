# frozen_string_literal: true

module Payabli
  module CheckCapture
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [Payabli::CheckCapture::Client]
      def initialize(client:)
        @client = client
      end

      # Captures a check for Remote Deposit Capture (RDC) using the provided check images and details. This endpoint handles the OCR extraction of check data including MICR, routing number, account number, and amount. See the [RDC guide](/developers/developer-guides/pay-in-rdc) for more details.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Payabli::CheckCapture::Types::CheckCaptureRequestBody]
      #
      # @return [Payabli::CheckCapture::Types::CheckCaptureResponse]
      def check_processing(request_options: {}, **params)
        _body_prop_names = %i[entry_point front_image rear_image check_amount]
        _body_bag = params.slice(*_body_prop_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "POST",
          path: "CheckCapture/CheckProcessing",
          body: Payabli::CheckCapture::Types::CheckCaptureRequestBody.new(_body_bag).to_h
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::CheckCapture::Types::CheckCaptureResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end
    end
  end
end
