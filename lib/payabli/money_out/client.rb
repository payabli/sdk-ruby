# frozen_string_literal: true

module Payabli
  module MoneyOut
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Authorizes a transaction for payout.
      #
      # If you don't pass `autoCapture` with a value of `true`, authorized transactions aren't flagged for settlement
      # until captured. Use the `referenceId` returned in the response to capture the transaction.
      #
      # When `autoCapture` is `true`, Payabli captures the transaction asynchronously after authorization. The response
      # confirms only that the transaction was authorized; it doesn't confirm that capture succeeded. To confirm
      # capture, listen for the
      # [`payout_transaction_approvedcaptured`](/developers/webhooks/payout-transaction-approved-captured) webhook
      # event.
      #
      # If a velocity fraud alert is triggered, the endpoint returns a `202` response with `responseCode` `9051`, and
      # the authorization is held for risk review rather than rejected. If a risk policy blocks the transaction, the
      # endpoint returns a `422` response with `responseCode` `9005`, a terminal rejection.
      #
      # For check payouts, Payabli validates the remit (mailing) address at authorization. If the address fails
      # deliverability validation, the endpoint returns a `422` response and doesn't charge the paypoint. Correct the
      # address and re-authorize. Other payout rails (ACH, RTP, virtual card, wire, and managed payables) aren't
      # affected.
      #
      # @param request_options [Hash]
      # @param params [Payabli::MoneyOut::Types::RequestOutAuthorize]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Boolean, nil] :allow_duplicated_bills
      # @option params [Boolean, nil] :do_not_create_bills
      # @option params [Boolean, nil] :force_vendor_creation
      # @option params [Boolean, nil] :same_day_ach
      # @option params [String, nil] :idempotency_key
      #
      # @example
      #   client.money_out.authorize_out(
      #     entry_point: "8cfec329267",
      #     order_description: "Window Painting",
      #     payment_method: {
      #       method_: "managed"
      #     },
      #     payment_details: {
      #       total_amount: 47,
      #       unbundled: false
      #     },
      #     vendor_data: {
      #       vendor_number: "VEN-123"
      #     },
      #     invoice_data: [{
      #       bill_id: 54323
      #     }],
      #     auto_capture: true
      #   )
      #
      # @return [Payabli::Types::AuthCapturePayoutResponse]
      def authorize_out(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::MoneyOut::Types::RequestOutAuthorize.new(params).to_h
        non_body_param_names = %w[allowDuplicatedBills doNotCreateBills forceVendorCreation sameDayACH idempotencyKey]
        body = request_data.except(*non_body_param_names)

        query_params = {}
        query_params["allowDuplicatedBills"] = params[:allow_duplicated_bills] if params.key?(:allow_duplicated_bills)
        query_params["doNotCreateBills"] = params[:do_not_create_bills] if params.key?(:do_not_create_bills)
        query_params["forceVendorCreation"] = params[:force_vendor_creation] if params.key?(:force_vendor_creation)
        query_params["sameDayACH"] = params[:same_day_ach] if params.key?(:same_day_ach)

        headers = {}
        headers["idempotencyKey"] = params[:idempotency_key] if params[:idempotency_key]

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }]).merge(headers)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "MoneyOut/authorize",
          headers: headers,
          query: query_params,
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
          Payabli::Types::AuthCapturePayoutResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Cancels an array of payout transactions.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.money_out.cancel_all_out(request: %w[2-29 2-28 2-27])
      #
      # @return [Payabli::Types::CaptureAllOutResponse]
      def cancel_all_out(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "MoneyOut/cancelAll",
          headers: headers,
          body: params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::CaptureAllOutResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Cancel a payout transaction by ID.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :reference_id
      #
      # @example
      #   client.money_out.cancel_out_get(reference_id: "129-219")
      #
      # @return [Payabli::Types::PayabliApiResponse0000]
      def cancel_out_get(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "MoneyOut/cancel/#{URI.encode_uri_component(params[:reference_id].to_s)}",
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
          Payabli::Types::PayabliApiResponse0000.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Cancel a payout transaction by ID.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :reference_id
      #
      # @example
      #   client.money_out.cancel_out_delete(reference_id: "129-219")
      #
      # @return [Payabli::Types::PayabliApiResponse0000]
      def cancel_out_delete(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "MoneyOut/cancel/#{URI.encode_uri_component(params[:reference_id].to_s)}",
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
          Payabli::Types::PayabliApiResponse0000.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Captures an array of authorized payout transactions for settlement. The maximum number of transactions that can
      # be captured in a single request is 500.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Boolean, nil] :auto_convert_same_day_ach
      # @option params [String, nil] :idempotency_key
      #
      # @example
      #   client.money_out.capture_all_out(body: %w[2-29 2-28 2-27])
      #
      # @return [Payabli::Types::CaptureAllOutResponse]
      def capture_all_out(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[auto_convert_same_day_ach]
        query_params = {}
        query_params["autoConvertSameDayAch"] = params[:auto_convert_same_day_ach] if params.key?(:auto_convert_same_day_ach)
        params = params.except(*query_param_names)

        headers = {}
        headers["idempotencyKey"] = params[:idempotency_key] if params[:idempotency_key]

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }]).merge(headers)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "MoneyOut/captureAll",
          headers: headers,
          query: query_params,
          body: params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::CaptureAllOutResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Captures a single authorized payout transaction by ID. If the transaction was authorized with `autoCapture` set
      # to `true`, you don't need to call this endpoint to capture the transaction for processing.
      #
      # If a velocity fraud alert is triggered, the endpoint returns a `202` response with `responseCode` `9051`, and
      # the capture is held for risk review rather than rejected. If a risk policy blocks the transaction, the endpoint
      # returns a `422` response with `responseCode` `9005`, a terminal rejection.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :reference_id
      # @option params [Boolean, nil] :auto_convert_same_day_ach
      # @option params [String, nil] :idempotency_key
      #
      # @example
      #   client.money_out.capture_out(reference_id: "129-219")
      #
      # @return [Payabli::Types::AuthCapturePayoutResponse]
      def capture_out(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["autoConvertSameDayAch"] = params[:auto_convert_same_day_ach] if params.key?(:auto_convert_same_day_ach)

        headers = {}
        headers["idempotencyKey"] = params[:idempotency_key] if params[:idempotency_key]

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }]).merge(headers)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "MoneyOut/capture/#{URI.encode_uri_component(params[:reference_id].to_s)}",
          headers: headers,
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::AuthCapturePayoutResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Returns details for a processed money out transaction.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :trans_id
      #
      # @example
      #   client.money_out.payout_details(trans_id: "45-as456777hhhhhhhhhh77777777-324")
      #
      # @return [Payabli::Types::BillDetailResponse]
      def payout_details(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "MoneyOut/details/#{URI.encode_uri_component(params[:trans_id].to_s)}",
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
          Payabli::Types::BillDetailResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves vCard details for a single card in an entrypoint.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :card_token
      #
      # @example
      #   client.money_out.v_card_get(card_token: "20230403315245421165")
      #
      # @return [Payabli::Types::VCardGetResponse]
      def v_card_get(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "MoneyOut/vcard/#{URI.encode_uri_component(params[:card_token].to_s)}",
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
          Payabli::Types::VCardGetResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Renews an expired or expiring virtual card by extending its expiration date to a future month.
      #
      # The card must be a virtual card that hasn't been fully used. The new expiration date must be in `MM-YYYY` or
      # `MM/YYYY` format and no more than 2 years and 363 days in the future. The card expires on the last day of the
      # month you specify.
      #
      # On success, `referenceId` holds the renewed card's token (the card processor may issue a new token). The
      # response reuses the standard payout result object, so the payment-transaction fields it carries don't apply to
      # renewal and always return `null`.
      #
      # @param request_options [Hash]
      # @param params [Payabli::MoneyOut::Types::RenewVCardRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :card_token
      #
      # @example
      #   client.money_out.renew_v_card(
      #     card_token: "20231206142225226104",
      #     expiration_date: "12-2027"
      #   )
      #
      # @return [Payabli::Types::RenewVCardResponse]
      def renew_v_card(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::MoneyOut::Types::RenewVCardRequest.new(params).to_h
        non_body_param_names = %w[cardToken]
        body = request_data.except(*non_body_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "MoneyOutCard/vcard/#{URI.encode_uri_component(params[:card_token].to_s)}/renew",
          headers: headers,
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
          Payabli::Types::RenewVCardResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Sends a virtual card link via email to the vendor associated with the `transId`.
      #
      # @param request_options [Hash]
      # @param params [Payabli::MoneyOut::Types::SendVCardLinkRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.money_out.send_v_card_link(trans_id: "01K33Z6YQZ6GD5QVKZ856MJBSC")
      #
      # @return [Payabli::Types::OperationResult]
      def send_v_card_link(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "vcard/send-card-link",
          headers: headers,
          body: Payabli::MoneyOut::Types::SendVCardLinkRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::OperationResult.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieve the image of a check associated with a processed transaction.
      # The check image is returned in the response body as a base64-encoded string.
      # The check image is only available for payouts that have been processed.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :asset_name
      #
      # @example
      #   client.money_out.get_check_image(asset_name: "check133832686289732320_01JKBNZ5P32JPTZY8XXXX000000.pdf")
      #
      # @return [String]
      def get_check_image(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "MoneyOut/checkimage/#{URI.encode_uri_component(params[:asset_name].to_s)}",
          headers: headers,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # Updates the status of a processed check payment transaction. This endpoint handles the status transition,
      # updates related bills, creates audit events, and triggers notifications.
      #
      # The transaction must meet all of the following criteria:
      # - **Status**: Must be in Processing or Processed status.
      # - **Payment method**: Must be a check payment method.
      #
      # ### Allowed status values
      #
      # | Value | Status | Description |
      # |-------|--------|-------------|
      # | `0` | Cancelled/Voided | Cancels the check transaction. Reverts associated bills to their previous state
      # (Approved or Active), creates "Cancelled" events, and sends a `payout_transaction_voidedcancelled` notification
      # if the notification is enabled. |
      # | `5` | Paid | Marks the check transaction as paid. Updates associated bills to "Paid" status, creates "Paid"
      # events, and sends a `payout_transaction_paid` notification if the notification is enabled. |
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :trans_id
      # @option params [Payabli::Types::AllowedCheckPaymentStatus] :check_payment_status
      #
      # @example
      #   client.money_out.update_check_payment_status(
      #     trans_id: "TRANS123456",
      #     check_payment_status: "5"
      #   )
      #
      # @return [Payabli::Types::PayabliApiResponse00Responsedatanonobject]
      def update_check_payment_status(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "MoneyOut/status/#{URI.encode_uri_component(params[:trans_id].to_s)}/#{URI.encode_uri_component(params[:check_payment_status].to_s)}",
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
          Payabli::Types::PayabliApiResponse00Responsedatanonobject.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Reissues a payout transaction with a new payment method. This creates a new transaction linked to the original
      # and marks the original transaction as reissued.
      #
      # The original transaction must be in **Processing** or **Processed** status. The payment method in the request
      # body is used directly. The endpoint doesn't fall back to vendor-managed payment methods.
      #
      # The new transaction goes through the standard authorize-and-capture flow automatically. Both the original and
      # new transactions are linked through their event histories for audit purposes.
      #
      # @param request_options [Hash]
      # @param params [Payabli::MoneyOut::Types::ReissueOutRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :trans_id
      # @option params [String, nil] :idempotency_key
      #
      # @example
      #   client.money_out.reissue_out(
      #     trans_id: "129-219",
      #     payment_method: {
      #       method_: "ach",
      #       ach_account: "9876543210",
      #       ach_account_type: "savings",
      #       ach_routing: "021000021",
      #       ach_holder: "Acme Corp",
      #       ach_holder_type: "business"
      #     }
      #   )
      #
      # @return [Payabli::Types::ReissuePayoutResponse]
      def reissue_out(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::MoneyOut::Types::ReissueOutRequest.new(params).to_h
        non_body_param_names = %w[transId idempotencyKey]
        body = request_data.except(*non_body_param_names)

        query_params = {}
        query_params["transId"] = params[:trans_id] if params.key?(:trans_id)

        headers = {}
        headers["idempotencyKey"] = params[:idempotency_key] if params[:idempotency_key]

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }]).merge(headers)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "MoneyOut/reissue",
          headers: headers,
          query: query_params,
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
          Payabli::Types::ReissuePayoutResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
