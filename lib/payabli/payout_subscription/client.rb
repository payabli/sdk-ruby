# frozen_string_literal: true

module Payabli
  module PayoutSubscription
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Creates a payout subscription to automatically send payouts to a vendor on a recurring schedule. See [Manage
      # payout subscriptions](/guides/pay-out-developer-payout-subscriptions-manage) for a step-by-step guide.
      #
      # @param request_options [Hash]
      # @param params [Payabli::PayoutSubscription::Types::RequestPayoutSchedule]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :idempotency_key
      #
      # @example
      #   client.payout_subscription.create_payout_subscription(
      #     entry_point: "8cfec329267",
      #     payment_method: {
      #       method_: "ach",
      #       ach_holder: "Herman Coatings",
      #       ach_routing: "021000021",
      #       ach_account: "3453445666",
      #       ach_account_type: "checking"
      #     },
      #     payment_details: {
      #       total_amount: 500,
      #       service_fee: 0,
      #       currency: "USD"
      #     },
      #     vendor_data: {
      #       vendor_id: 456
      #     },
      #     bill_data: [{
      #       invoice_number: "INV-2345",
      #       net_amount: "500",
      #       invoice_date: "2025-08-01",
      #       due_date: "2025-08-15"
      #     }],
      #     schedule_details: {
      #       start_date: "09/01/2027",
      #       end_date: "09/01/2026",
      #       frequency: "monthly"
      #     }
      #   )
      #
      # @return [Payabli::Types::AddPayoutSubscriptionResponse]
      def create_payout_subscription(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::PayoutSubscription::Types::RequestPayoutSchedule.new(params).to_h
        non_body_param_names = %w[idempotencyKey]
        body = request_data.except(*non_body_param_names)

        headers = {}
        headers["idempotencyKey"] = params[:idempotency_key] if params[:idempotency_key]

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }]).merge(headers)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "PayoutSubscription",
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
          Payabli::Types::AddPayoutSubscriptionResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a single payout subscription's details. See [Manage payout
      # subscriptions](/guides/pay-out-developer-payout-subscriptions-manage) for more information.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :id
      #
      # @example
      #   client.payout_subscription.get_payout_subscription(id: 42)
      #
      # @return [Payabli::Types::GetPayoutSubscriptionResponse]
      def get_payout_subscription(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "PayoutSubscription/#{URI.encode_uri_component(params[:id].to_s)}",
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
          Payabli::Types::GetPayoutSubscriptionResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Updates a payout subscription's details. See [Manage payout
      # subscriptions](/guides/pay-out-developer-payout-subscriptions-manage) for more information.
      #
      # @param request_options [Hash]
      # @param params [Payabli::PayoutSubscription::Types::UpdatePayoutSubscriptionBody]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :id
      #
      # @example
      #   client.payout_subscription.update_payout_subscription(
      #     id: 42,
      #     set_pause: true
      #   )
      #
      # @return [Payabli::Types::UpdatePayoutSubscriptionResponse]
      def update_payout_subscription(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::PayoutSubscription::Types::UpdatePayoutSubscriptionBody.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "PayoutSubscription/#{URI.encode_uri_component(params[:id].to_s)}",
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
          Payabli::Types::UpdatePayoutSubscriptionResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Deletes a payout subscription and prevents future payouts. See [Manage payout
      # subscriptions](/guides/pay-out-developer-payout-subscriptions-manage) for more information.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :id
      #
      # @example
      #   client.payout_subscription.delete_payout_subscription(id: 42)
      #
      # @return [Payabli::Types::DeletePayoutSubscriptionResponse]
      def delete_payout_subscription(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "PayoutSubscription/#{URI.encode_uri_component(params[:id].to_s)}",
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
          Payabli::Types::DeletePayoutSubscriptionResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
