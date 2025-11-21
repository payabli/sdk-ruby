# frozen_string_literal: true

module Payabli
  module Subscription
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [Payabli::Subscription::Client]
      def initialize(client:)
        @client = client
      end

      # Retrieves a single subscription's details.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::SubscriptionQueryRecords]
      def get_subscription(request_options: {}, **params)
        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "GET",
          path: "Subscription/#{params[:sub_id]}"
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::SubscriptionQueryRecords.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Creates a subscription or scheduled payment to run at a specified time and frequency.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Payabli::Subscription::Types::SubscriptionRequestBody]
      #
      # @return [Payabli::Subscription::Types::AddSubscriptionResponse]
      def new_subscription(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        _query_param_names = %i[force_customer_creation]
        _query = {}
        _query["forceCustomerCreation"] = params[:force_customer_creation] if params.key?(:force_customer_creation)
        params = params.except(*_query_param_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "POST",
          path: "Subscription/add",
          query: _query,
          body: Payabli::Subscription::Types::SubscriptionRequestBody.new(params).to_h
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Subscription::Types::AddSubscriptionResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Deletes a subscription, autopay, or recurring payment and prevents future charges.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Subscription::Types::RemoveSubscriptionResponse]
      def remove_subscription(request_options: {}, **params)
        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "DELETE",
          path: "Subscription/#{params[:sub_id]}"
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Subscription::Types::RemoveSubscriptionResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Updates a subscription's details.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Payabli::Subscription::Types::RequestUpdateSchedule]
      #
      # @return [Payabli::Subscription::Types::UpdateSubscriptionResponse]
      def update_subscription(request_options: {}, **params)
        _path_param_names = %i[sub_id]
        _body = params.except(*_path_param_names)
        _body_prop_names = %i[payment_details schedule_details set_pause]
        _body_bag = _body.slice(*_body_prop_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "PUT",
          path: "Subscription/#{params[:sub_id]}",
          body: Payabli::Subscription::Types::RequestUpdateSchedule.new(_body_bag).to_h
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Subscription::Types::UpdateSubscriptionResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end
    end
  end
end
