# frozen_string_literal: true

module Payabli
  module LineItem
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [Payabli::LineItem::Client]
      def initialize(client:)
        @client = client
      end

      # Adds products and services to an entrypoint's catalog. These are used as line items for invoicing and transactions. In the response, "responseData" displays the item's code.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Payabli::Types::LineItem]
      #
      # @return [Payabli::Types::PayabliApiResponse6]
      def add_item(request_options: {}, **params)
        _path_param_names = %i[entry]
        _body = params.except(*_path_param_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "POST",
          path: "LineItem/#{params[:entry]}",
          body: Payabli::Types::LineItem.new(_body).to_h
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponse6.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Deletes an item.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::LineItem::Types::DeleteItemResponse]
      def delete_item(request_options: {}, **params)
        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "DELETE",
          path: "LineItem/#{params[:line_item_id]}"
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::LineItem::Types::DeleteItemResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Gets an item by ID.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::LineItemQueryRecord]
      def get_item(request_options: {}, **params)
        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "GET",
          path: "LineItem/#{params[:line_item_id]}"
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::LineItemQueryRecord.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Retrieves a list of line items and their details from an entrypoint. Line items are also known as items, products, and services. Use filters to limit results.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::QueryResponseItems]
      def list_line_items(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        _query_param_names = %i[from_record limit_record parameters sort_by]
        _query = {}
        _query["fromRecord"] = params[:from_record] if params.key?(:from_record)
        _query["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        _query["parameters"] = params[:parameters] if params.key?(:parameters)
        _query["sortBy"] = params[:sort_by] if params.key?(:sort_by)
        params = params.except(*_query_param_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "GET",
          path: "Query/lineitems/#{params[:entry]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::QueryResponseItems.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Updates an item.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Payabli::Types::LineItem]
      #
      # @return [Payabli::Types::PayabliApiResponse6]
      def update_item(request_options: {}, **params)
        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "PUT",
          path: "LineItem/#{params[:line_item_id]}",
          body: Payabli::Types::LineItem.new(params).to_h
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponse6.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end
    end
  end
end
