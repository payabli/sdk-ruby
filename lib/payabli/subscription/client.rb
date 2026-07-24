# frozen_string_literal: true

module Payabli
  module Subscription
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Retrieves a single subscription's details.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :sub_id
      #
      # @example
      #   client.subscription.get_subscription(sub_id: 231)
      #
      # @return [Payabli::Types::SubscriptionQueryRecords]
      def get_subscription(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Subscription/#{URI.encode_uri_component(params[:sub_id].to_s)}",
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
          Payabli::Types::SubscriptionQueryRecords.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Updates a subscription's details.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Subscription::Types::RequestUpdateSchedule]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :sub_id
      #
      # @example
      #   client.subscription.update_subscription(
      #     sub_id: 231,
      #     set_pause: true
      #   )
      #
      # @return [Payabli::Types::UpdateSubscriptionResponse]
      def update_subscription(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::Subscription::Types::RequestUpdateSchedule.new(params).to_h
        non_body_param_names = %w[subId]
        body = request_data.except(*non_body_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "Subscription/#{URI.encode_uri_component(params[:sub_id].to_s)}",
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
          Payabli::Types::UpdateSubscriptionResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Deletes a subscription, autopay, or recurring payment and prevents future charges.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :sub_id
      #
      # @example
      #   client.subscription.remove_subscription(sub_id: 231)
      #
      # @return [Payabli::Types::RemoveSubscriptionResponse]
      def remove_subscription(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "Subscription/#{URI.encode_uri_component(params[:sub_id].to_s)}",
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
          Payabli::Types::RemoveSubscriptionResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Creates a subscription or scheduled payment to run at a specified time and frequency. You can use stored payment
      # method tokens for card, ACH, and digital wallets by passing them into the `paymentMethod.storedMethodId` field.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Subscription::Types::RequestSchedule]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Boolean, nil] :force_customer_creation
      # @option params [String, nil] :idempotency_key
      #
      # @example
      #   client.subscription.new_subscription(
      #     customer_data: {
      #       customer_id: 4440
      #     },
      #     entry_point: "8cfec329267",
      #     payment_details: {
      #       service_fee: 0,
      #       total_amount: 100
      #     },
      #     payment_method: {
      #       cardcvv: "123",
      #       cardexp: "12/29",
      #       card_holder: "John Cassian",
      #       cardnumber: "4111111111111111",
      #       cardzip: "37615",
      #       initiator: "payor",
      #       method_: "card"
      #     },
      #     schedule_details: {
      #       end_date: "2025-03-20",
      #       frequency: "weekly",
      #       plan_id: 1,
      #       start_date: "2024-09-20"
      #     }
      #   )
      #
      # @return [Payabli::Types::AddSubscriptionResponse]
      def new_subscription(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::Subscription::Types::RequestSchedule.new(params).to_h
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
          path: "Subscription/add",
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
          Payabli::Types::AddSubscriptionResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
