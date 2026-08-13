# frozen_string_literal: true

module Payabli
  module Vendor
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Creates a vendor in an entrypoint.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Types::VendorData]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :entry
      #
      # @example
      #   client.vendor.add_vendor(
      #     entry: "8cfec329267",
      #     vendor_number: "VEN-123",
      #     address_1: "123 Ocean Drive",
      #     address_2: "Suite 400",
      #     billing_data: {
      #       id: 123,
      #       bank_name: "Country Bank",
      #       routing_account: "123123123",
      #       account_number: "123123123",
      #       type_account: "Checking",
      #       bank_account_holder_name: "Gruzya Adventure Outfitters LLC",
      #       bank_account_holder_type: "Business",
      #       bank_account_function: 0
      #     },
      #     city: "Miami",
      #     contacts: [{
      #       contact_name: "Herman Martinez",
      #       contact_email: "example@email.com",
      #       contact_title: "Owner",
      #       contact_phone: "3055550000"
      #     }],
      #     country: "US",
      #     customer_vendor_account: "A-37622",
      #     ein: "12-3456789",
      #     email: "example@email.com",
      #     internal_reference_id: 123,
      #     location_code: "MIA123",
      #     mcc: "7777",
      #     name_1: "Herman's Coatings and Masonry",
      #     name_2: "<string>",
      #     payee_name_1: "<string>",
      #     payee_name_2: "<string>",
      #     payment_method: "managed",
      #     phone: "5555555555",
      #     remit_address_1: "123 Walnut Street",
      #     remit_address_2: "Suite 900",
      #     remit_city: "Miami",
      #     remit_country: "US",
      #     remit_state: "FL",
      #     remit_zip: "31113",
      #     state: "FL",
      #     vendor_status: 1,
      #     zip: "33139"
      #   )
      #
      # @return [Payabli::Types::PayabliApiResponseVendors]
      def add_vendor(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[entry]
        body_params = params.except(*path_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "Vendor/single/#{URI.encode_uri_component(params[:entry].to_s)}",
          headers: headers,
          body: Payabli::Types::VendorData.new(body_params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponseVendors.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a vendor's details, including enrichment status and payment acceptance info when available.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :id_vendor
      #
      # @example
      #   client.vendor.get_vendor(id_vendor: 1)
      #
      # @return [Payabli::Types::VendorQueryRecord]
      def get_vendor(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Vendor/#{URI.encode_uri_component(params[:id_vendor].to_s)}",
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
          Payabli::Types::VendorQueryRecord.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Updates a vendor's information. Send only the fields you need to update.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Types::VendorData]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :id_vendor
      #
      # @example
      #   client.vendor.edit_vendor(
      #     id_vendor: 1,
      #     name_1: "Theodore's Janitorial"
      #   )
      #
      # @return [Payabli::Types::PayabliApiResponseVendors]
      def edit_vendor(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[id_vendor]
        body_params = params.except(*path_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "Vendor/#{URI.encode_uri_component(params[:id_vendor].to_s)}",
          headers: headers,
          body: Payabli::Types::VendorData.new(body_params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponseVendors.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Delete a vendor.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :id_vendor
      #
      # @example
      #   client.vendor.delete_vendor(id_vendor: 1)
      #
      # @return [Payabli::Types::PayabliApiResponseVendors]
      def delete_vendor(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "Vendor/#{URI.encode_uri_component(params[:id_vendor].to_s)}",
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
          Payabli::Types::PayabliApiResponseVendors.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Triggers AI-powered vendor enrichment for an existing vendor. Runs one or more enrichment stages (invoice scan,
      # web search) based on the `scope` parameter. Can automatically apply extracted payment acceptance info and vendor
      # contact information to the vendor record, or return raw results for manual review. Contact Payabli to enable
      # this feature.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Vendor::Types::VendorEnrichRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :entry
      #
      # @example
      #   client.vendor.enrich_vendor(
      #     entry: "8cfec329267",
      #     vendor_id: 456,
      #     scope: ["invoice_scan"],
      #     apply_enrichment_data: false,
      #     invoice_file: {
      #       ftype: "pdf",
      #       filename: "invoice-2026-001.pdf",
      #       f_content: "<base64-encoded-pdf>"
      #     },
      #     fallback_method: "check"
      #   )
      #
      # @return [Payabli::Types::VendorEnrichResponse]
      def enrich_vendor(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::Vendor::Types::VendorEnrichRequest.new(params).to_h
        non_body_param_names = %w[entry]
        body = request_data.except(*non_body_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "Vendor/enrich/#{URI.encode_uri_component(params[:entry].to_s)}",
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
          Payabli::Types::VendorEnrichResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Schedules an AI outreach call to a vendor to collect their preferred payment method and contact email. This is
      # the third enrichment stage. Calls are scheduled for the next business day at around 9 AM in the vendor's
      # timezone, with retries on no-answer and a fallback payment method applied when retries are exhausted. This
      # feature is opt-in at the org level. Contact your Payabli representative to enable it, provision a phone number,
      # and discuss pricing.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Vendor::Types::ScheduleEnrichmentCallRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :entry
      #
      # @example
      #   client.vendor.schedule_enrichment_call(
      #     entry: "8cfec329267",
      #     vendor_id: 456,
      #     phone: "5555550200",
      #     enrichment_id: "enrich-3890-a1b2c3d4",
      #     bill_id: 54323,
      #     fallback_method: "check",
      #     max_retries: 3,
      #     timezone: "America/New_York"
      #   )
      #
      # @return [Payabli::Types::VendorScheduleCallResponse]
      def schedule_enrichment_call(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::Vendor::Types::ScheduleEnrichmentCallRequest.new(params).to_h
        non_body_param_names = %w[entry]
        body = request_data.except(*non_body_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "Vendor/enrich/schedule_call/#{URI.encode_uri_component(params[:entry].to_s)}",
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
          Payabli::Types::VendorScheduleCallResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Returns the latest AI outreach call activity for a vendor. The response is a composite object with a `state`
      # discriminator (`none`, `scheduled`, `successful`, or `failed`); the block that matches the current state is
      # populated. When the vendor has no call activity, `state` is `none` and the response returns HTTP 200.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :id_vendor
      #
      # @example
      #   client.vendor.get_enrichment_call_status(id_vendor: 456)
      #
      # @return [Payabli::Types::VendorCallStatusResponse]
      def get_enrichment_call_status(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Vendor/#{URI.encode_uri_component(params[:id_vendor].to_s)}/enrichment/call-status",
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
          Payabli::Types::VendorCallStatusResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
