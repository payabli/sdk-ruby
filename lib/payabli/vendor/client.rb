# frozen_string_literal: true

module Payabli
  module Vendor
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [Payabli::Vendor::Client]
      def initialize(client:)
        @client = client
      end

      # Creates a vendor in an entrypoint.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Payabli::Types::VendorData]
      #
      # @return [Payabli::Types::PayabliApiResponseVendors]
      def add_vendor(request_options: {}, **params)
        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "POST",
          path: "Vendor/single/#{params[:entry]}",
          body: Payabli::Types::VendorData.new(params).to_h
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponseVendors.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Delete a vendor.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::PayabliApiResponseVendors]
      def delete_vendor(request_options: {}, **params)
        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "DELETE",
          path: "Vendor/#{params[:id_vendor]}"
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponseVendors.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Updates a vendor's information. Send only the fields you need to update.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Payabli::Types::VendorData]
      #
      # @return [Payabli::Types::PayabliApiResponseVendors]
      def edit_vendor(request_options: {}, **params)
        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "PUT",
          path: "Vendor/#{params[:id_vendor]}",
          body: Payabli::Types::VendorData.new(params).to_h
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponseVendors.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Retrieves a vendor's details.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::VendorQueryRecord]
      def get_vendor(request_options: {}, **params)
        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "GET",
          path: "Vendor/#{params[:id_vendor]}"
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::VendorQueryRecord.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end
    end
  end
end
