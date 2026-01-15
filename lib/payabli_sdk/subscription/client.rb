# frozen_string_literal: true

module PayabliSdk
  module Subscription
    class Client
      # @param client [PayabliSdk::Internal::Http::RawClient]
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
      # @return [PayabliSdk::Types::SubscriptionQueryRecords]
      def get_subscription(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Subscription/#{params[:sub_id]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Types::SubscriptionQueryRecords.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Creates a subscription or scheduled payment to run at a specified time and frequency.
      #
      # @param request_options [Hash]
      # @param params [PayabliSdk::Subscription::Types::SubscriptionRequestBody]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Boolean, nil] :force_customer_creation
      # @option params [String, nil] :idempotency_key
      #
      # @return [PayabliSdk::Subscription::Types::AddSubscriptionResponse]
      def new_subscription(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[force_customer_creation]
        query_params = {}
        query_params["forceCustomerCreation"] = params[:force_customer_creation] if params.key?(:force_customer_creation)
        params = params.except(*query_param_names)

        headers = {}
        headers["idempotencyKey"] = params[:idempotency_key] if params[:idempotency_key]

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "Subscription/add",
          headers: headers,
          query: query_params,
          body: PayabliSdk::Subscription::Types::SubscriptionRequestBody.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Subscription::Types::AddSubscriptionResponse.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
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
      # @return [PayabliSdk::Subscription::Types::RemoveSubscriptionResponse]
      def remove_subscription(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "Subscription/#{params[:sub_id]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Subscription::Types::RemoveSubscriptionResponse.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Updates a subscription's details.
      #
      # @param request_options [Hash]
      # @param params [PayabliSdk::Subscription::Types::RequestUpdateSchedule]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :sub_id
      #
      # @return [PayabliSdk::Subscription::Types::UpdateSubscriptionResponse]
      def update_subscription(request_options: {}, **params)
        params = PayabliSdk::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[sub_id]
        body_params = params.except(*path_param_names)
        body_prop_names = %i[payment_details schedule_details set_pause]
        body_bag = body_params.slice(*body_prop_names)

        request = PayabliSdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "Subscription/#{params[:sub_id]}",
          body: PayabliSdk::Subscription::Types::RequestUpdateSchedule.new(body_bag).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise PayabliSdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          PayabliSdk::Subscription::Types::UpdateSubscriptionResponse.load(response.body)
        else
          error_class = PayabliSdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
