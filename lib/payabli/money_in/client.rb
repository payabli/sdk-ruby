# frozen_string_literal: true

module Payabli
  module MoneyIn
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Authorize a card transaction. This returns an authorization code and reserves funds for the merchant. Authorized
      # transactions aren't flagged for settlement until
      # [captured](/developers/api-reference/moneyin/capture-an-authorized-transaction).
      # Only card transactions can be authorized. This endpoint can't be used for ACH transactions.
      # <Tip>
      # Consider migrating to the [v2 Authorize endpoint](/developers/api-reference/moneyinV2/authorize-a-transaction)
      # to take advantage of unified response codes and improved response consistency.
      # </Tip>
      #
      # @param request_options [Hash]
      # @param params [Payabli::MoneyIn::Types::TransRequestBody]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Boolean, nil] :force_customer_creation
      # @option params [String, nil] :idempotency_key
      #
      # @return [Payabli::MoneyIn::Types::AuthResponse]
      def authorize(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[force_customer_creation]
        query_params = {}
        query_params["forceCustomerCreation"] = params[:force_customer_creation] if params.key?(:force_customer_creation)
        params = params.except(*query_param_names)

        headers = {}
        headers["idempotencyKey"] = params[:idempotency_key] if params[:idempotency_key]

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "MoneyIn/authorize",
          headers: headers,
          query: query_params,
          body: Payabli::MoneyIn::Types::TransRequestBody.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::MoneyIn::Types::AuthResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # <Warning>
      # This endpoint is deprecated and will be sunset on November 24, 2025. Migrate to [POST
      # `/capture/{transId}`](/developers/api-reference/moneyin/capture-an-authorized-transaction)`.
      # </Warning>
      #
      #   Capture an [authorized
      # transaction](/developers/api-reference/moneyin/authorize-a-transaction) to complete the transaction and move
      # funds from the customer to merchant account.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :trans_id
      # @option params [Integer] :amount
      #
      # @return [Payabli::MoneyIn::Types::CaptureResponse]
      def capture(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "MoneyIn/capture/#{params[:trans_id]}/#{params[:amount]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::MoneyIn::Types::CaptureResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Capture an [authorized transaction](/developers/api-reference/moneyin/authorize-a-transaction) to complete the
      # transaction and move funds from the customer to merchant account.
      #
      # You can use this endpoint to capture both full and partial amounts of the original authorized transaction. See
      # [Capture an authorized transaction](/developers/developer-guides/pay-in-auth-and-capture) for more information
      # about this endpoint.
      #
      # <Tip>
      # Consider migrating to the [v2 Capture
      # endpoint](/developers/api-reference/moneyinV2/capture-an-authorized-transaction) to take advantage of unified
      # response codes and improved response consistency.
      # </Tip>
      #
      # @param request_options [Hash]
      # @param params [Payabli::MoneyIn::Types::CaptureRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :trans_id
      #
      # @return [Payabli::MoneyIn::Types::CaptureResponse]
      def capture_auth(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "MoneyIn/capture/#{params[:trans_id]}",
          body: Payabli::MoneyIn::Types::CaptureRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::MoneyIn::Types::CaptureResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Make a temporary microdeposit in a customer account to verify the customer's ownership and access to the target
      # account. Reverse the microdeposit with `reverseCredit`.
      #
      # This feature must be enabled by Payabli on a per-merchant basis. Contact support for help.
      #
      # @param request_options [Hash]
      # @param params [Payabli::MoneyIn::Types::RequestCredit]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Boolean, nil] :force_customer_creation
      # @option params [String, nil] :idempotency_key
      #
      # @return [Payabli::Types::PayabliApiResponse0]
      def credit(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::MoneyIn::Types::RequestCredit.new(params).to_h
        non_body_param_names = %w[forceCustomerCreation idempotencyKey]
        body = request_data.except(*non_body_param_names)

        query_param_names = %i[force_customer_creation]
        query_params = {}
        query_params["forceCustomerCreation"] = params[:force_customer_creation] if params.key?(:force_customer_creation)
        params = params.except(*query_param_names)

        headers = {}
        headers["idempotencyKey"] = params[:idempotency_key] if params[:idempotency_key]

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "MoneyIn/makecredit",
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
          Payabli::Types::PayabliApiResponse0.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieve a processed transaction's details.
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
      # @return [Payabli::Types::TransactionQueryRecordsCustomer]
      def details(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "MoneyIn/details/#{params[:trans_id]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::TransactionQueryRecordsCustomer.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Make a single transaction. This method authorizes and captures a payment in one step.
      #
      #   <Tip>
      # Consider migrating to the [v2 Make a transaction
      # endpoint](/developers/api-reference/moneyinV2/make-a-transaction) to take advantage of unified response codes
      # and improved response consistency.
      #   </Tip>
      #
      # @param request_options [Hash]
      # @param params [Payabli::MoneyIn::Types::TransRequestBody]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Boolean, nil] :ach_validation
      # @option params [Boolean, nil] :force_customer_creation
      # @option params [Boolean, nil] :include_details
      # @option params [String, nil] :idempotency_key
      # @option params [String, nil] :validation_code
      #
      # @return [Payabli::MoneyIn::Types::PayabliApiResponseGetPaid]
      def getpaid(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[ach_validation force_customer_creation include_details]
        query_params = {}
        query_params["achValidation"] = params[:ach_validation] if params.key?(:ach_validation)
        query_params["forceCustomerCreation"] = params[:force_customer_creation] if params.key?(:force_customer_creation)
        query_params["includeDetails"] = params[:include_details] if params.key?(:include_details)
        params = params.except(*query_param_names)

        headers = {}
        headers["idempotencyKey"] = params[:idempotency_key] if params[:idempotency_key]
        headers["validationCode"] = params[:validation_code] if params[:validation_code]

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "MoneyIn/getpaid",
          headers: headers,
          query: query_params,
          body: Payabli::MoneyIn::Types::TransRequestBody.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::MoneyIn::Types::PayabliApiResponseGetPaid.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # A reversal either refunds or voids a transaction independent of the transaction's settlement status. Send a
      # reversal request for a transaction, and Payabli automatically determines whether it's a refund or void. You
      # don't need to know whether the transaction is settled or not.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :trans_id
      # @option params [Integer] :amount
      #
      # @return [Payabli::MoneyIn::Types::ReverseResponse]
      def reverse(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "MoneyIn/reverse/#{params[:trans_id]}/#{params[:amount]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::MoneyIn::Types::ReverseResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Refund a transaction that has settled and send money back to the account holder. If a transaction hasn't been
      # settled, void it instead.
      #
      #   <Tip>
      # Consider migrating to the [v2 Refund endpoint](/developers/api-reference/moneyinV2/refund-a-settled-transaction)
      # to take advantage of unified response codes and improved response consistency.
      #   </Tip>
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :trans_id
      # @option params [Integer] :amount
      #
      # @return [Payabli::MoneyIn::Types::RefundResponse]
      def refund(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "MoneyIn/refund/#{params[:trans_id]}/#{params[:amount]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::MoneyIn::Types::RefundResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Refunds a settled transaction with split instructions.
      #
      # @param request_options [Hash]
      # @param params [Payabli::MoneyIn::Types::RequestRefund]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :trans_id
      # @option params [String, nil] :idempotency_key
      #
      # @return [Payabli::MoneyIn::Types::RefundWithInstructionsResponse]
      def refund_with_instructions(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::MoneyIn::Types::RequestRefund.new(params).to_h
        non_body_param_names = %w[transId idempotencyKey]
        body = request_data.except(*non_body_param_names)

        headers = {}
        headers["idempotencyKey"] = params[:idempotency_key] if params[:idempotency_key]

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "MoneyIn/refund/#{params[:trans_id]}",
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
          Payabli::MoneyIn::Types::RefundWithInstructionsResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Reverse microdeposits that are used to verify customer account ownership and access. The `transId` value is
      # returned in the success response for the original credit transaction made with `api/MoneyIn/makecredit`.
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
      # @return [Payabli::Types::PayabliApiResponse]
      def reverse_credit(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "MoneyIn/reverseCredit/#{params[:trans_id]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Send a payment receipt for a transaction.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :trans_id
      # @option params [String, nil] :email
      #
      # @return [Payabli::MoneyIn::Types::ReceiptResponse]
      def send_receipt_2_trans(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[email]
        query_params = {}
        query_params["email"] = params[:email] if params.key?(:email)
        params = params.except(*query_param_names)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "MoneyIn/sendreceipt/#{params[:trans_id]}",
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
          Payabli::MoneyIn::Types::ReceiptResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Validates a card number without running a transaction or authorizing a charge.
      #
      # @param request_options [Hash]
      # @param params [Payabli::MoneyIn::Types::RequestPaymentValidate]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :idempotency_key
      #
      # @return [Payabli::MoneyIn::Types::ValidateResponse]
      def validate(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::MoneyIn::Types::RequestPaymentValidate.new(params).to_h
        non_body_param_names = ["idempotencyKey"]
        body = request_data.except(*non_body_param_names)

        headers = {}
        headers["idempotencyKey"] = params[:idempotency_key] if params[:idempotency_key]

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "MoneyIn/validate",
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
          Payabli::MoneyIn::Types::ValidateResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Cancel a transaction that hasn't been settled yet. Voiding non-captured authorizations prevents future captures.
      # If a transaction has been settled, refund it instead.
      #
      #   <Tip>
      # Consider migrating to the [v2 Void endpoint](/developers/api-reference/moneyinV2/void-a-transaction) to take
      # advantage of unified response codes and improved response consistency.
      #   </Tip>
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
      # @return [Payabli::MoneyIn::Types::VoidResponse]
      def void(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "MoneyIn/void/#{params[:trans_id]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::MoneyIn::Types::VoidResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Make a single transaction. This method authorizes and captures a payment in one step. This is the v2 version of
      # the `api/MoneyIn/getpaid` endpoint, and returns the unified response format. See [Pay In unified response codes
      # reference](/guides/pay-in-unified-response-codes-reference) for more information.
      #
      # @param request_options [Hash]
      # @param params [Payabli::MoneyIn::Types::TransRequestBody]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Boolean, nil] :ach_validation
      # @option params [Boolean, nil] :force_customer_creation
      # @option params [String, nil] :idempotency_key
      # @option params [String, nil] :validation_code
      #
      # @return [Payabli::V2MoneyInTypes::Types::V2TransactionResponseWrapper]
      def getpaidv_2(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[ach_validation force_customer_creation]
        query_params = {}
        query_params["achValidation"] = params[:ach_validation] if params.key?(:ach_validation)
        query_params["forceCustomerCreation"] = params[:force_customer_creation] if params.key?(:force_customer_creation)
        params = params.except(*query_param_names)

        headers = {}
        headers["idempotencyKey"] = params[:idempotency_key] if params[:idempotency_key]
        headers["validationCode"] = params[:validation_code] if params[:validation_code]

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/MoneyIn/getpaid",
          headers: headers,
          query: query_params,
          body: Payabli::MoneyIn::Types::TransRequestBody.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::V2MoneyInTypes::Types::V2TransactionResponseWrapper.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Authorize a card transaction. This returns an authorization code and reserves funds for the merchant. Authorized
      # transactions aren't flagged for settlement until captured. This is the v2 version of the `api/MoneyIn/authorize`
      # endpoint, and returns the unified response format. See [Pay In unified response codes
      # reference](/guides/pay-in-unified-response-codes-reference) for more information.
      #
      # **Note**: Only card transactions can be authorized. This endpoint can't be used for ACH transactions.
      #
      # @param request_options [Hash]
      # @param params [Payabli::MoneyIn::Types::TransRequestBody]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Boolean, nil] :force_customer_creation
      # @option params [String, nil] :idempotency_key
      #
      # @return [Payabli::V2MoneyInTypes::Types::V2TransactionResponseWrapper]
      def authorizev_2(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[force_customer_creation]
        query_params = {}
        query_params["forceCustomerCreation"] = params[:force_customer_creation] if params.key?(:force_customer_creation)
        params = params.except(*query_param_names)

        headers = {}
        headers["idempotencyKey"] = params[:idempotency_key] if params[:idempotency_key]

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/MoneyIn/authorize",
          headers: headers,
          query: query_params,
          body: Payabli::MoneyIn::Types::TransRequestBody.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::V2MoneyInTypes::Types::V2TransactionResponseWrapper.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Capture an authorized transaction to complete the transaction and move funds from the customer to merchant
      # account. This is the v2 version of the `api/MoneyIn/capture/{transId}` endpoint, and returns the unified
      # response format. See [Pay In unified response codes reference](/guides/pay-in-unified-response-codes-reference)
      # for more information.
      #
      # @param request_options [Hash]
      # @param params [Payabli::MoneyIn::Types::CaptureRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :trans_id
      #
      # @return [Payabli::V2MoneyInTypes::Types::V2TransactionResponseWrapper]
      def capturev_2(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/MoneyIn/capture/#{params[:trans_id]}",
          body: Payabli::MoneyIn::Types::CaptureRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::V2MoneyInTypes::Types::V2TransactionResponseWrapper.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Give a full refund for a transaction that has settled and send money back to the account holder. To perform a
      # partial refund, see [Partially refund a
      # transaction](developers/api-reference/moneyinV2/partial-refund-a-settled-transaction).
      #
      # This is the v2 version of the refund endpoint, and returns the unified response format. See [Pay In unified
      # response codes reference](/guides/pay-in-unified-response-codes-reference) for more information.
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
      # @return [Payabli::V2MoneyInTypes::Types::V2TransactionResponseWrapper]
      def refundv_2(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/MoneyIn/refund/#{params[:trans_id]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::V2MoneyInTypes::Types::V2TransactionResponseWrapper.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Refund a transaction that has settled and send money back to the account holder. If `amount` is omitted or set
      # to 0, performs a full refund. When a non-zero `amount` is provided, this endpoint performs a partial refund.
      #
      # This is the v2 version of the refund endpoint, and returns the unified response format. See [Pay In unified
      # response codes reference](/guides/pay-in-unified-response-codes-reference) for more information.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :trans_id
      # @option params [Integer] :amount
      #
      # @return [Payabli::V2MoneyInTypes::Types::V2TransactionResponseWrapper]
      def refundv_2_amount(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/MoneyIn/refund/#{params[:trans_id]}/#{params[:amount]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::V2MoneyInTypes::Types::V2TransactionResponseWrapper.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Cancel a transaction that hasn't been settled yet. Voiding non-captured authorizations prevents future captures.
      # This is the v2 version of the `api/MoneyIn/void/{transId}` endpoint, and returns the unified response format.
      # See [Pay In unified response codes reference](/guides/pay-in-unified-response-codes-reference) for more
      # information.
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
      # @return [Payabli::V2MoneyInTypes::Types::V2TransactionResponseWrapper]
      def voidv_2(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/MoneyIn/void/#{params[:trans_id]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::V2MoneyInTypes::Types::V2TransactionResponseWrapper.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
