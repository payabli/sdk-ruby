# frozen_string_literal: true

module Payabli
  module Import
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [Payabli::Import::Client]
      def initialize(client:)
        @client = client
      end

      # Import a list of bills from a CSV file. See the [Import Guide](/developers/developer-guides/bills-add#import-bills) for more help and an example file.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [void]
      #
      # @return [Payabli::Types::PayabliApiResponseImport]
      def import_bills(request_options: {}, **params)
        body = Internal::Multipart::FormData.new

        body.add_part(params[:file].to_form_data_part(name: "file")) if params[:file]

        _request = Payabli::Internal::Multipart::Request.new(
          method: POST,
          path: "Import/billsForm/#{params[:entry]}",
          body: body
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponseImport.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Import a list of customers from a CSV file. See the [Import Guide](/developers/developer-guides/entities-customers#import-customers) for more help and example files.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [void]
      #
      # @return [Payabli::Types::PayabliApiResponseImport]
      def import_customer(request_options: {}, **params)
        body = Internal::Multipart::FormData.new

        body.add_part(params[:file].to_form_data_part(name: "file")) if params[:file]

        _request = Payabli::Internal::Multipart::Request.new(
          method: POST,
          path: "Import/customersForm/#{params[:entry]}",
          body: body
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponseImport.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # Import a list of vendors from a CSV file. See the [Import Guide](/developers/developer-guides/entities-vendors#import-vendors) for more help and example files.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [void]
      #
      # @return [Payabli::Types::PayabliApiResponseImport]
      def import_vendor(request_options: {}, **params)
        body = Internal::Multipart::FormData.new

        body.add_part(params[:file].to_form_data_part(name: "file")) if params[:file]

        _request = Payabli::Internal::Multipart::Request.new(
          method: POST,
          path: "Import/vendorsForm/#{params[:entry]}",
          body: body
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponseImport.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end
    end
  end
end
