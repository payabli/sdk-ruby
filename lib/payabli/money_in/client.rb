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

      # <Warning>
      # This endpoint is deprecated. New integrations should use the [Authorize
      # endpoint](/developers/api-reference/moneyinV2/authorize-a-transaction), then capture, void, or refund the
      # resulting transaction with the corresponding endpoints. Transactions created with this legacy endpoint must be
      # managed with the legacy lifecycle endpoints — they aren't interchangeable with the current ones.
      # </Warning>
      #
      #
      # Authorize a card transaction. This returns an authorization code and reserves funds for the merchant. Authorized
      # transactions aren't flagged for settlement until
      # [captured](/developers/api-reference/moneyin/capture-an-authorized-transaction).
      #
      # Only card transactions can be authorized. This endpoint can't be used for ACH transactions.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Types::TransRequestBody]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Boolean, nil] :force_customer_creation
      # @option params [String, nil] :idempotency_key
      #
      # @example
      #   client.money_in.authorize(
      #     customer_data: {
      #       customer_id: 4440
      #     },
      #     entry_point: "8cfec329267",
      #     ipaddress: "255.255.255.255",
      #     payment_details: {
      #       service_fee: 0,
      #       total_amount: 100
      #     },
      #     payment_method: {
      #       cardcvv: "999",
      #       cardexp: "02/27",
      #       card_holder: "John Cassian",
      #       cardnumber: "4111111111111111",
      #       cardzip: "12345",
      #       initiator: "payor",
      #       method_: "card"
      #     }
      #   )
      #
      # @return [Payabli::Types::AuthResponse]
      def authorize(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[force_customer_creation]
        query_params = {}
        query_params["forceCustomerCreation"] = params[:force_customer_creation] if params.key?(:force_customer_creation)
        params = params.except(*query_param_names)

        headers = {}
        headers["idempotencyKey"] = params[:idempotency_key] if params[:idempotency_key]

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }]).merge(headers)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "MoneyIn/authorize",
          headers: headers,
          query: query_params,
          body: Payabli::Types::TransRequestBody.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::AuthResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # <Warning>
      # This endpoint is deprecated. Use [POST
      # `/capture/{transId}`](/developers/api-reference/moneyin/capture-an-authorized-transaction) instead, which
      # supports partial captures and service fee adjustments.
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
      # @example
      #   client.money_in.capture(
      #     trans_id: "10-7d9cd67d-2d5d-4cd7-a1b7-72b8b201ec13",
      #     amount: 0
      #   )
      #
      # @return [Payabli::Types::CaptureResponse]
      def capture(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "MoneyIn/capture/#{URI.encode_uri_component(params[:trans_id].to_s)}/#{URI.encode_uri_component(params[:amount].to_s)}",
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
          Payabli::Types::CaptureResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # <Warning>
      # This endpoint is deprecated. Use it only to capture transactions originally authorized with the legacy
      # [Authorize endpoint](/developers/api-reference/moneyin/authorize-a-transaction). New integrations should use the
      # [Capture endpoint](/developers/api-reference/moneyinV2/capture-an-authorized-transaction), which only works on
      # transactions authorized with the current [Authorize
      # endpoint](/developers/api-reference/moneyinV2/authorize-a-transaction).
      # </Warning>
      #
      # Capture an [authorized transaction](/developers/api-reference/moneyin/authorize-a-transaction) to complete the
      # transaction and move funds from the customer to merchant account.
      #
      # You can use this endpoint to capture both full and partial amounts of the original authorized transaction. See
      # [Capture an authorized transaction](/developers/developer-guides/pay-in-auth-and-capture) for more information
      # about this endpoint.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Types::CaptureRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :trans_id
      #
      # @example
      #   client.money_in.capture_auth(
      #     trans_id: "10-7d9cd67d-2d5d-4cd7-a1b7-72b8b201ec13",
      #     payment_details: {
      #       total_amount: 105,
      #       service_fee: 5
      #     }
      #   )
      #
      # @return [Payabli::Types::CaptureResponse]
      def capture_auth(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[trans_id]
        body_params = params.except(*path_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "MoneyIn/capture/#{URI.encode_uri_component(params[:trans_id].to_s)}",
          headers: headers,
          body: Payabli::Types::CaptureRequest.new(body_params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::CaptureResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Make a temporary microdeposit in a customer account to verify the customer's ownership and access to the target
      # account. Reverse the microdeposit with `reverseCredit`. Payabli doesn't automatically make microdeposits when
      # you add a bank account, you must manually make the requests.
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
      # @example
      #   client.money_in.credit(
      #     idempotency_key: "6B29FC40-CA47-1067-B31D-00DD010662DA",
      #     customer_data: {
      #       billing_address_1: "5127 Linkwood ave",
      #       customer_number: "C-90010"
      #     },
      #     entrypoint: "8cfec329267",
      #     payment_details: {
      #       service_fee: 0,
      #       total_amount: 1
      #     },
      #     payment_method: {
      #       ach_account: "88354454",
      #       ach_account_type: "Checking",
      #       ach_holder: "John Smith",
      #       ach_routing: "021000021",
      #       method_: "ach"
      #     }
      #   )
      #
      # @return [Payabli::Types::PayabliApiResponse0]
      def credit(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::MoneyIn::Types::RequestCredit.new(params).to_h
        non_body_param_names = %w[forceCustomerCreation idempotencyKey]
        body = request_data.except(*non_body_param_names)

        query_params = {}
        query_params["forceCustomerCreation"] = params[:force_customer_creation] if params.key?(:force_customer_creation)

        headers = {}
        headers["idempotencyKey"] = params[:idempotency_key] if params[:idempotency_key]

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }]).merge(headers)
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
      # @example
      #   client.money_in.details(trans_id: "45-as456777hhhhhhhhhh77777777-324")
      #
      # @return [Payabli::Types::TransactionQueryRecordsCustomer]
      def details(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "MoneyIn/details/#{URI.encode_uri_component(params[:trans_id].to_s)}",
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
          Payabli::Types::TransactionQueryRecordsCustomer.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # <Warning>
      # This endpoint is deprecated. New integrations should use the [Make a transaction
      # endpoint](/developers/api-reference/moneyinV2/make-a-transaction) and manage the resulting transaction with the
      # corresponding void or refund endpoints. Transactions created with this legacy endpoint must be managed with the
      # legacy lifecycle endpoints — they aren't interchangeable with the current ones.
      # </Warning>
      #
      # Make a single transaction. This method authorizes and captures a payment in one step.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Types::TransRequestBody]
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
      # @example
      #   client.money_in.getpaid(
      #     customer_data: {
      #       customer_id: 4440
      #     },
      #     entry_point: "8cfec329267",
      #     ipaddress: "255.255.255.255",
      #     payment_details: {
      #       service_fee: 0,
      #       total_amount: 100
      #     },
      #     payment_method: {
      #       cardcvv: "999",
      #       cardexp: "02/27",
      #       card_holder: "John Cassian",
      #       cardnumber: "4111111111111111",
      #       cardzip: "12345",
      #       initiator: "payor",
      #       method_: "card"
      #     }
      #   )
      #
      # @return [Payabli::Types::PayabliApiResponseGetPaid]
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

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }]).merge(headers)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "MoneyIn/getpaid",
          headers: headers,
          query: query_params,
          body: Payabli::Types::TransRequestBody.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponseGetPaid.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # <Warning>
      # This endpoint is deprecated and only works on transactions created with the legacy endpoints. There's no
      # equivalent in the current endpoints. For transactions created with [Make a
      # transaction](/developers/api-reference/moneyinV2/make-a-transaction) or
      # [Authorize](/developers/api-reference/moneyinV2/authorize-a-transaction), check the transaction's settlement
      # status and call [Void](/developers/api-reference/moneyinV2/void-a-transaction) or
      # [Refund](/developers/api-reference/moneyinV2/refund-a-settled-transaction) based on the result.
      # </Warning>
      #
      # A reversal either refunds or voids a transaction independent of the transaction's settlement status. Send a
      # reversal request for a transaction, and Payabli automatically determines whether it's a refund or void. You
      # don't need to know whether the transaction is settled or not. This endpoint only works on transactions made with
      # the legacy endpoints. For transactions made with the current endpoints, check the transaction's settlement
      # status and call void or refund based on the result.
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
      # @example
      #   client.money_in.reverse(
      #     trans_id: "10-3ffa27df-b171-44e0-b251-e95fbfc7a723",
      #     amount: 0
      #   )
      #
      # @return [Payabli::Types::ReverseResponse]
      def reverse(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "MoneyIn/reverse/#{URI.encode_uri_component(params[:trans_id].to_s)}/#{URI.encode_uri_component(params[:amount].to_s)}",
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
          Payabli::Types::ReverseResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # <Warning>
      # This endpoint is deprecated. Use it only to refund transactions originally created with the legacy endpoints.
      # New integrations should use the [Refund
      # endpoint](/developers/api-reference/moneyinV2/refund-a-settled-transaction), which only works on transactions
      # created with [Make a transaction](/developers/api-reference/moneyinV2/make-a-transaction) or
      # [Authorize](/developers/api-reference/moneyinV2/authorize-a-transaction).
      # </Warning>
      #
      # Refund a transaction that has settled and send money back to the account holder. If a transaction hasn't been
      # settled, void it instead.
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
      # @example
      #   client.money_in.refund(
      #     trans_id: "10-3ffa27df-b171-44e0-b251-e95fbfc7a723",
      #     amount: 0
      #   )
      #
      # @return [Payabli::Types::RefundResponse]
      def refund(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "MoneyIn/refund/#{URI.encode_uri_component(params[:trans_id].to_s)}/#{URI.encode_uri_component(params[:amount].to_s)}",
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
          Payabli::Types::RefundResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # <Warning>
      # This endpoint is deprecated. Use it only to refund transactions originally created with the legacy endpoints. To
      # refund a split-funded transaction created with [Make a
      # transaction](/developers/api-reference/moneyinV2/make-a-transaction) or
      # [Authorize](/developers/api-reference/moneyinV2/authorize-a-transaction), use the [Refund
      # endpoint](/developers/api-reference/moneyinV2/refund-a-settled-transaction) with split instructions in the
      # request body.
      # </Warning>
      #
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
      # @example
      #   client.money_in.refund_with_instructions(
      #     trans_id: "10-3ffa27df-b171-44e0-b251-e95fbfc7a723",
      #     idempotency_key: "8A29FC40-CA47-1067-B31D-00DD010662DB",
      #     amount: 100,
      #     order_description: "Materials deposit",
      #     refund_details: {
      #       split_refunding: [{
      #         origination_entry_point: "7f1a381696",
      #         account_id: "187-342",
      #         description: "Refunding undelivered materials",
      #         amount: 60
      #       }, {
      #         origination_entry_point: "7f1a381696",
      #         account_id: "187-343",
      #         description: "Refunding deposit for undelivered materials",
      #         amount: 40
      #       }]
      #     },
      #     source: "api"
      #   )
      #
      # @return [Payabli::Types::RefundWithInstructionsResponse]
      def refund_with_instructions(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::MoneyIn::Types::RequestRefund.new(params).to_h
        non_body_param_names = %w[transId idempotencyKey]
        body = request_data.except(*non_body_param_names)

        headers = {}
        headers["idempotencyKey"] = params[:idempotency_key] if params[:idempotency_key]

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }]).merge(headers)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "MoneyIn/refund/#{URI.encode_uri_component(params[:trans_id].to_s)}",
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
          Payabli::Types::RefundWithInstructionsResponse.load(response.body)
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
      # @example
      #   client.money_in.reverse_credit(trans_id: "45-as456777hhhhhhhhhh77777777-324")
      #
      # @return [Payabli::Types::PayabliApiResponse]
      def reverse_credit(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "MoneyIn/reverseCredit/#{URI.encode_uri_component(params[:trans_id].to_s)}",
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
      # @example
      #   client.money_in.send_receipt_2_trans(
      #     trans_id: "45-as456777hhhhhhhhhh77777777-324",
      #     email: "example@email.com"
      #   )
      #
      # @return [Payabli::Types::ReceiptResponse]
      def send_receipt_2_trans(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["email"] = params[:email] if params.key?(:email)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "MoneyIn/sendreceipt/#{URI.encode_uri_component(params[:trans_id].to_s)}",
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
          Payabli::Types::ReceiptResponse.load(response.body)
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
      # @example
      #   client.money_in.validate(
      #     idempotency_key: "6B29FC40-CA47-1067-B31D-00DD010662DA",
      #     entry_point: "8cfec329267",
      #     payment_method: {
      #       method_: "card",
      #       cardnumber: "4360000001000005",
      #       cardexp: "12/29",
      #       cardzip: "14602-8328",
      #       card_holder: "Dianne Becker-Smith"
      #     }
      #   )
      #
      # @return [Payabli::Types::ValidateResponse]
      def validate(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::MoneyIn::Types::RequestPaymentValidate.new(params).to_h
        non_body_param_names = %w[idempotencyKey]
        body = request_data.except(*non_body_param_names)

        headers = {}
        headers["idempotencyKey"] = params[:idempotency_key] if params[:idempotency_key]

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }]).merge(headers)
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
          Payabli::Types::ValidateResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # <Warning>
      # This endpoint is deprecated. Use it only to void transactions originally created with the legacy endpoints. New
      # integrations should use the [Void endpoint](/developers/api-reference/moneyinV2/void-a-transaction), which only
      # works on transactions created with [Make a transaction](/developers/api-reference/moneyinV2/make-a-transaction)
      # or [Authorize](/developers/api-reference/moneyinV2/authorize-a-transaction).
      # </Warning>
      #
      # Cancel a transaction that hasn't been settled yet. Voiding non-captured authorizations prevents future captures.
      # If a transaction has been settled, refund it instead.
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
      #   client.money_in.void(trans_id: "10-3ffa27df-b171-44e0-b251-e95fbfc7a723")
      #
      # @return [Payabli::Types::VoidResponse]
      def void(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "MoneyIn/void/#{URI.encode_uri_component(params[:trans_id].to_s)}",
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
          Payabli::Types::VoidResponse.load(response.body)
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
      # @param params [Payabli::Types::TransRequestBody]
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
      # @example
      #   client.money_in.getpaidv_2(
      #     customer_data: {
      #       customer_id: 4440
      #     },
      #     entry_point: "8cfec329267",
      #     ipaddress: "255.255.255.255",
      #     payment_details: {
      #       service_fee: 0,
      #       total_amount: 100
      #     },
      #     payment_method: {
      #       cardcvv: "999",
      #       cardexp: "02/27",
      #       card_holder: "John Cassian",
      #       cardnumber: "4111111111111111",
      #       cardzip: "12345",
      #       initiator: "payor",
      #       method_: "card"
      #     }
      #   )
      #
      # @return [Payabli::Types::V2TransactionResponseWrapper]
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

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }]).merge(headers)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/MoneyIn/getpaid",
          headers: headers,
          query: query_params,
          body: Payabli::Types::TransRequestBody.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::V2TransactionResponseWrapper.load(response.body)
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
      # @param params [Payabli::Types::TransRequestBody]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Boolean, nil] :force_customer_creation
      # @option params [String, nil] :idempotency_key
      #
      # @example
      #   client.money_in.authorizev_2(
      #     customer_data: {
      #       customer_id: 4440
      #     },
      #     entry_point: "8cfec329267",
      #     ipaddress: "255.255.255.255",
      #     payment_details: {
      #       service_fee: 0,
      #       total_amount: 100
      #     },
      #     payment_method: {
      #       cardcvv: "999",
      #       cardexp: "02/27",
      #       card_holder: "John Cassian",
      #       cardnumber: "4111111111111111",
      #       cardzip: "12345",
      #       initiator: "payor",
      #       method_: "card"
      #     }
      #   )
      #
      # @return [Payabli::Types::V2TransactionResponseWrapper]
      def authorizev_2(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[force_customer_creation]
        query_params = {}
        query_params["forceCustomerCreation"] = params[:force_customer_creation] if params.key?(:force_customer_creation)
        params = params.except(*query_param_names)

        headers = {}
        headers["idempotencyKey"] = params[:idempotency_key] if params[:idempotency_key]

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }]).merge(headers)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/MoneyIn/authorize",
          headers: headers,
          query: query_params,
          body: Payabli::Types::TransRequestBody.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::V2TransactionResponseWrapper.load(response.body)
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
      # @param params [Payabli::Types::CaptureRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :trans_id
      #
      # @example
      #   client.money_in.capturev_2(
      #     trans_id: "10-7d9cd67d-2d5d-4cd7-a1b7-72b8b201ec13",
      #     payment_details: {
      #       total_amount: 105,
      #       service_fee: 5
      #     }
      #   )
      #
      # @return [Payabli::Types::V2TransactionResponseWrapper]
      def capturev_2(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[trans_id]
        body_params = params.except(*path_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/MoneyIn/capture/#{URI.encode_uri_component(params[:trans_id].to_s)}",
          headers: headers,
          body: Payabli::Types::CaptureRequest.new(body_params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::V2TransactionResponseWrapper.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Give a full refund for a transaction that has settled and send money back to the account holder. To perform a
      # partial refund, see [Partially refund a
      # transaction](/developers/api-reference/moneyinV2/partial-refund-a-settled-transaction).
      #
      # This is the v2 version of the refund endpoint, and returns the unified response format. See [Pay In unified
      # response codes reference](/guides/pay-in-unified-response-codes-reference) for more information.
      #
      # <Note>
      # To refund a split-funded transaction, include split instructions in the request body. Omit the body for a
      # standard refund.
      # </Note>
      #
      # @param request_options [Hash]
      # @param params [Payabli::Types::RefundV2Request]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :trans_id
      #
      # @example
      #   client.money_in.refundv_2(
      #     trans_id: "10-3ffa27df-b171-44e0-b251-e95fbfc7a723",
      #     amount: 100,
      #     order_description: "Materials deposit",
      #     refund_details: {
      #       split_refunding: [{
      #         origination_entry_point: "495147f647",
      #         account_id: "187-342",
      #         description: "Refunding undelivered materials",
      #         amount: 60
      #       }, {
      #         origination_entry_point: "8cfec329267",
      #         account_id: "187-343",
      #         description: "Refunding deposit for undelivered materials",
      #         amount: 40
      #       }]
      #     },
      #     source: "api"
      #   )
      #
      # @return [Payabli::Types::V2TransactionResponseWrapper]
      def refundv_2(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[trans_id]
        body_params = params.except(*path_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/MoneyIn/refund/#{URI.encode_uri_component(params[:trans_id].to_s)}",
          headers: headers,
          body: body_params.empty? ? nil : Payabli::Types::RefundV2Request.new(body_params).to_h,
          omit_content_type_without_body: true,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::V2TransactionResponseWrapper.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Refund a transaction that has settled and send money back to the account holder. If `amount` is set to 0,
      # performs a full refund. When a non-zero `amount` is provided, this endpoint performs a partial refund.
      #
      # This is the v2 version of the refund endpoint, and returns the unified response format. See [Pay In unified
      # response codes reference](/guides/pay-in-unified-response-codes-reference) for more information.
      #
      # <Note>
      # For a standard refund, whether full (`amount` set to 0) or partial, send no request body. Include a request body
      # only to refund a split-funded transaction, with split instructions in `refundDetails`.
      # </Note>
      #
      # @param request_options [Hash]
      # @param params [Payabli::Types::RefundV2Request]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :trans_id
      # @option params [Integer] :amount
      #
      # @example
      #   client.money_in.refundv_2_amount(
      #     trans_id: "10-3ffa27df-b171-44e0-b251-e95fbfc7a723",
      #     amount: 70,
      #     order_description: "Materials deposit",
      #     refund_details: {
      #       split_refunding: [{
      #         origination_entry_point: "495147f647",
      #         account_id: "187-342",
      #         description: "Refunding undelivered materials",
      #         amount: 40
      #       }, {
      #         origination_entry_point: "8cfec329267",
      #         account_id: "187-343",
      #         description: "Refunding deposit for undelivered materials",
      #         amount: 30
      #       }]
      #     },
      #     source: "api"
      #   )
      #
      # @return [Payabli::Types::V2TransactionResponseWrapper]
      def refundv_2_amount(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[trans_id amount]
        body_params = params.except(*path_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/MoneyIn/refund/#{URI.encode_uri_component(params[:trans_id].to_s)}/#{URI.encode_uri_component(params[:amount].to_s)}",
          headers: headers,
          body: body_params.empty? ? nil : Payabli::Types::RefundV2Request.new(body_params).to_h,
          omit_content_type_without_body: true,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::V2TransactionResponseWrapper.load(response.body)
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
      # @example
      #   client.money_in.voidv_2(trans_id: "10-3ffa27df-b171-44e0-b251-e95fbfc7a723")
      #
      # @return [Payabli::Types::V2TransactionResponseWrapper]
      def voidv_2(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/MoneyIn/void/#{URI.encode_uri_component(params[:trans_id].to_s)}",
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
          Payabli::Types::V2TransactionResponseWrapper.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
