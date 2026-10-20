# frozen_string_literal: true

module Payabli
  module Businesses
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Lists businesses with optional filtering and pagination.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :status
      # @option params [String, nil] :name
      # @option params [String, nil] :merchant_cat_code
      # @option params [String, nil] :legal_structure
      # @option params [Integer, nil] :limit
      # @option params [Integer, nil] :page
      # @option params [String, nil] :sort_by
      # @option params [String, nil] :sort_order
      #
      # @example
      #   client.businesses.list_businesses(
      #     limit: 1,
      #     page: 1
      #   )
      #
      # @return [Payabli::Types::ListBusinessesEnvelope]
      def list_businesses(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["status"] = params[:status] if params.key?(:status)
        query_params["name"] = params[:name] if params.key?(:name)
        query_params["merchantCatCode"] = params[:merchant_cat_code] if params.key?(:merchant_cat_code)
        query_params["legalStructure"] = params[:legal_structure] if params.key?(:legal_structure)
        query_params["limit"] = params[:limit] if params.key?(:limit)
        query_params["page"] = params[:page] if params.key?(:page)
        query_params["sortBy"] = params[:sort_by] if params.key?(:sort_by)
        query_params["sortOrder"] = params[:sort_order] if params.key?(:sort_order)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/businesses",
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
          Payabli::Types::ListBusinessesEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Creates a business, the legal entity behind a paypoint. New businesses
      # start in `Draft`. Set `parentReference` to the organization
      # the business belongs to, or omit it to use the organization your
      # credential belongs to.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Types::CreateBusinessRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.businesses.create_business(
      #     external_id: "rg-001",
      #     legal_name: "Rose Gardens LLC",
      #     legal_structure: "llc",
      #     website: "https://example.com",
      #     merchant_cat_code: "5814",
      #     phone: ["3055551212"],
      #     emails: ["ops@example.com"],
      #     payment_methods: [{
      #       type: "bank_account",
      #       name: "Operating account",
      #       financial_institution: "Bank of Example",
      #       owner_type: "business",
      #       account_type: "checking",
      #       account_number: "123456789",
      #       routing_number: "021000021",
      #       usage: %w[deposits billing],
      #       is_default: true
      #     }, {
      #       type: "bank_account",
      #       name: "Payout account",
      #       financial_institution: "Bank of Example",
      #       owner_type: "business",
      #       account_type: "checking",
      #       account_number: "987654321",
      #       routing_number: "021000021",
      #       usage: ["payOutFunding"],
      #       is_default: false
      #     }],
      #     tax_reference: "477498993",
      #     parent_reference: "8cfec329267"
      #   )
      #
      # @return [Payabli::Types::BusinessCreatedEnvelope]
      def create_business(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/businesses",
          headers: headers,
          body: Payabli::Types::CreateBusinessRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::BusinessCreatedEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a business by reference. Sensitive fields such as `taxReference` are masked.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :business_reference
      #
      # @example
      #   client.businesses.get_business(business_reference: "019fed1a-3d6e-75d3-a81e-cba3874b0a55")
      #
      # @return [Payabli::Types::BusinessDetailEnvelope]
      def get_business(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/businesses/#{URI.encode_uri_component(params[:business_reference].to_s)}",
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
          Payabli::Types::BusinessDetailEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Deactivates a business. This is a soft delete: the business moves to
      # `Deactivated` and the record is kept.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Businesses::Types::DeactivateBusinessRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :business_reference
      #
      # @example
      #   client.businesses.deactivate_business(
      #     business_reference: "019fed33-615d-77b6-afaa-46e7ac9bf36e",
      #     reason: "Duplicate record"
      #   )
      #
      # @return [Payabli::Types::BusinessDeactivatedEnvelope]
      def deactivate_business(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::Businesses::Types::DeactivateBusinessRequest.new(params).to_h
        non_body_param_names = %w[businessReference]
        body = request_data.except(*non_body_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "v2/businesses/#{URI.encode_uri_component(params[:business_reference].to_s)}",
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
          Payabli::Types::BusinessDeactivatedEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Applies a partial update to a business. Send only the fields you want to change.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Businesses::Types::UpdateBusinessRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :business_reference
      #
      # @example
      #   client.businesses.update_business(
      #     business_reference: "019fed1a-3d6e-75d3-a81e-cba3874b0a55",
      #     website: "https://example.org"
      #   )
      #
      # @return [Payabli::Types::BusinessUpdatedEnvelope]
      def update_business(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::Businesses::Types::UpdateBusinessRequest.new(params).to_h
        non_body_param_names = %w[businessReference]
        body = request_data.except(*non_body_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "v2/businesses/#{URI.encode_uri_component(params[:business_reference].to_s)}",
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
          Payabli::Types::BusinessUpdatedEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a business by reference with sensitive fields unmasked.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :business_reference
      #
      # @example
      #   client.businesses.get_business_unmasked(business_reference: "019fed1a-3d6e-75d3-a81e-cba3874b0a55")
      #
      # @return [Payabli::Types::BusinessDetailEnvelope]
      def get_business_unmasked(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/businesses/#{URI.encode_uri_component(params[:business_reference].to_s)}/unmasked",
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
          Payabli::Types::BusinessDetailEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Lists the addresses on a business. Each address is identified by its `businessAddressReference`.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :business_reference
      #
      # @example
      #   client.businesses.list_business_addresses(business_reference: "019fed1a-3d6e-75d3-a81e-cba3874b0a55")
      #
      # @return [Payabli::Types::BusinessAddressListEnvelope]
      def list_business_addresses(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/businesses/#{URI.encode_uri_component(params[:business_reference].to_s)}/addresses",
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
          Payabli::Types::BusinessAddressListEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Adds an address to a business. Returns the new address and its `businessAddressReference`.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Businesses::Types::CreateBusinessAddressRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :business_reference
      #
      # @example
      #   client.businesses.create_business_address(
      #     business_reference: "019fed1a-3d6e-75d3-a81e-cba3874b0a55",
      #     type: "mailing",
      #     location: "warehouse",
      #     address_line_1: "202 Warehouse Ln",
      #     city_locality: "Austin",
      #     state_province: "TX",
      #     postal_code: "73302",
      #     country: "US"
      #   )
      #
      # @return [Payabli::Types::BusinessAddressEnvelope]
      def create_business_address(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::Businesses::Types::CreateBusinessAddressRequest.new(params).to_h
        non_body_param_names = %w[businessReference]
        body = request_data.except(*non_body_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/businesses/#{URI.encode_uri_component(params[:business_reference].to_s)}/addresses",
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
          Payabli::Types::BusinessAddressEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a single business address by its `businessAddressReference`.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :business_reference
      # @option params [String] :business_address_reference
      #
      # @example
      #   client.businesses.get_business_address(
      #     business_reference: "019fed1a-3d6e-75d3-a81e-cba3874b0a55",
      #     business_address_reference: "019fed1a-84a6-7043-a6c0-e8aa2d4bec36"
      #   )
      #
      # @return [Payabli::Types::BusinessAddressEnvelope]
      def get_business_address(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/businesses/#{URI.encode_uri_component(params[:business_reference].to_s)}/addresses/#{URI.encode_uri_component(params[:business_address_reference].to_s)}",
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
          Payabli::Types::BusinessAddressEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Removes an address from a business.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :business_reference
      # @option params [String] :business_address_reference
      #
      # @example
      #   client.businesses.delete_business_address(
      #     business_reference: "019fed1a-3d6e-75d3-a81e-cba3874b0a55",
      #     business_address_reference: "019fed1a-67d6-768a-b4cc-29d4299e21d9"
      #   )
      #
      # @return [Payabli::Types::BusinessAddressDeletedEnvelope]
      def delete_business_address(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "v2/businesses/#{URI.encode_uri_component(params[:business_reference].to_s)}/addresses/#{URI.encode_uri_component(params[:business_address_reference].to_s)}",
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
          Payabli::Types::BusinessAddressDeletedEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Applies a partial update to a business address. Send only the fields you want to change; omitted fields are
      # kept.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Businesses::Types::UpdateBusinessAddressRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :business_reference
      # @option params [String] :business_address_reference
      #
      # @example
      #   client.businesses.update_business_address(
      #     business_reference: "019fed1a-3d6e-75d3-a81e-cba3874b0a55",
      #     business_address_reference: "019fed1a-67d6-768a-b4cc-29d4299e21d9",
      #     type: "billing"
      #   )
      #
      # @return [Payabli::Types::BusinessAddressEnvelope]
      def update_business_address(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::Businesses::Types::UpdateBusinessAddressRequest.new(params).to_h
        non_body_param_names = %w[businessReference businessAddressReference]
        body = request_data.except(*non_body_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "v2/businesses/#{URI.encode_uri_component(params[:business_reference].to_s)}/addresses/#{URI.encode_uri_component(params[:business_address_reference].to_s)}",
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
          Payabli::Types::BusinessAddressEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Lists the people linked to a business, each with the relationship's role, ownership, and relationship-scoped
      # contact details.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :business_reference
      #
      # @example
      #   client.businesses.list_business_people(business_reference: "019fed1a-3d6e-75d3-a81e-cba3874b0a55")
      #
      # @return [Payabli::Types::BusinessPersonListEnvelope]
      def list_business_people(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/businesses/#{URI.encode_uri_component(params[:business_reference].to_s)}/people",
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
          Payabli::Types::BusinessPersonListEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Links an existing person to a business, setting the relationship's role, ownership, primary-controller flag,
      # contact fields, and addresses.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Businesses::Types::LinkBusinessPersonRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :business_reference
      #
      # @example
      #   client.businesses.link_business_person(
      #     business_reference: "019fed1a-3d6e-75d3-a81e-cba3874b0a55",
      #     person_reference: "01a0014d-ce1a-7110-9bac-c4c59647a88d",
      #     person_type: "Owner",
      #     ownership_percentage: 100,
      #     is_primary_controller: true,
      #     is_signer: true,
      #     title: "CEO",
      #     primary_email: "contact@example.com",
      #     secondary_email: "contact.alt@example.net",
      #     primary_phone_number: "3055551212",
      #     secondary_phone_number: "3055559876",
      #     billing_address: {
      #       address_line_1: "123 Main Street",
      #       city_locality: "Miami",
      #       state_province: "FL",
      #       postal_code: "33101",
      #       country: "US",
      #       type: "billing"
      #     },
      #     mailing_address: {
      #       address_line_1: "456 Oak Avenue",
      #       city_locality: "Miami",
      #       state_province: "FL",
      #       postal_code: "33102",
      #       country: "US",
      #       type: "mailing"
      #     }
      #   )
      #
      # @return [Payabli::Types::BusinessPersonEnvelope]
      def link_business_person(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::Businesses::Types::LinkBusinessPersonRequest.new(params).to_h
        non_body_param_names = %w[businessReference]
        body = request_data.except(*non_body_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/businesses/#{URI.encode_uri_component(params[:business_reference].to_s)}/people",
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
          Payabli::Types::BusinessPersonEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a single business-person link by the person's reference.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :business_reference
      # @option params [String] :person_reference
      #
      # @example
      #   client.businesses.get_business_person(
      #     business_reference: "019fed1a-3d6e-75d3-a81e-cba3874b0a55",
      #     person_reference: "01a0014d-ce1a-7110-9bac-c4c59647a88d"
      #   )
      #
      # @return [Payabli::Types::BusinessPersonEnvelope]
      def get_business_person(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/businesses/#{URI.encode_uri_component(params[:business_reference].to_s)}/people/#{URI.encode_uri_component(params[:person_reference].to_s)}",
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
          Payabli::Types::BusinessPersonEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Removes the link between a person and a business. The person record itself isn't deleted.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :business_reference
      # @option params [String] :person_reference
      #
      # @example
      #   client.businesses.unlink_business_person(
      #     business_reference: "019fed1a-3d6e-75d3-a81e-cba3874b0a55",
      #     person_reference: "01a0014d-ce1a-7110-9bac-c4c59647a88d"
      #   )
      #
      # @return [untyped]
      def unlink_business_person(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "v2/businesses/#{URI.encode_uri_component(params[:business_reference].to_s)}/people/#{URI.encode_uri_component(params[:person_reference].to_s)}",
          headers: headers,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # Applies a partial update to a business-person link. Send only the fields you want to change; omitted fields are
      # kept.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Businesses::Types::UpdateBusinessPersonRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :business_reference
      # @option params [String] :person_reference
      #
      # @example
      #   client.businesses.update_business_person(
      #     business_reference: "019fed1a-3d6e-75d3-a81e-cba3874b0a55",
      #     person_reference: "01a0014d-ce1a-7110-9bac-c4c59647a88d",
      #     is_primary_controller: true,
      #     primary_email: "updated.contact@example.com"
      #   )
      #
      # @return [Payabli::Types::BusinessPersonEnvelope]
      def update_business_person(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::Businesses::Types::UpdateBusinessPersonRequest.new(params).to_h
        non_body_param_names = %w[businessReference personReference]
        body = request_data.except(*non_body_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "v2/businesses/#{URI.encode_uri_component(params[:business_reference].to_s)}/people/#{URI.encode_uri_component(params[:person_reference].to_s)}",
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
          Payabli::Types::BusinessPersonEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
