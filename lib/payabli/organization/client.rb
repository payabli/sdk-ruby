# frozen_string_literal: true

module Payabli
  module Organization
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Creates an organization under a parent organization. This is also referred to as a suborganization.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Organization::Types::AddOrganizationRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :idempotency_key
      #
      # @example
      #   client.organization.add_organization(
      #     idempotency_key: "6B29FC40-CA47-1067-B31D-00DD010662DA",
      #     billing_info: {
      #       ach_account: "123123123",
      #       ach_routing: "123123123",
      #       billing_address: "123 Walnut Street",
      #       billing_city: "Johnson City",
      #       billing_country: "US",
      #       billing_state: "TN",
      #       billing_zip: "37615"
      #     },
      #     contacts: [{
      #       contact_email: "herman@hermanscoatings.com",
      #       contact_name: "Herman Martinez",
      #       contact_phone: "3055550000",
      #       contact_title: "Owner"
      #     }],
      #     has_billing: true,
      #     has_residual: true,
      #     org_address: "123 Walnut Street",
      #     org_city: "Johnson City",
      #     org_country: "US",
      #     org_entry_name: "pilgrim-planner",
      #     org_id: "123",
      #     org_logo: {
      #       f_content: "TXkgdGVzdCBmaWxlHJ==...",
      #       filename: "my-doc.pdf",
      #       ftype: "pdf",
      #       furl: "https://mysite.com/my-doc.pdf"
      #     },
      #     org_name: "Pilgrim Planner",
      #     org_parent_id: 236,
      #     org_state: "TN",
      #     org_timezone: -5,
      #     org_type: 0,
      #     org_website: "www.pilgrimageplanner.com",
      #     org_zip: "37615",
      #     reply_to_email: "email@example.com"
      #   )
      #
      # @return [Payabli::Types::AddOrganizationResponse]
      def add_organization(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::Organization::Types::AddOrganizationRequest.new(params).to_h
        non_body_param_names = %w[idempotencyKey]
        body = request_data.except(*non_body_param_names)

        headers = {}
        headers["idempotencyKey"] = params[:idempotency_key] if params[:idempotency_key]

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }]).merge(headers)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "Organization",
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
          Payabli::Types::AddOrganizationResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Updates an organization's details by ID.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Organization::Types::OrganizationData]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :org_id
      #
      # @example
      #   client.organization.edit_organization(
      #     org_id: 123,
      #     contacts: [{
      #       contact_email: "herman@hermanscoatings.com",
      #       contact_name: "Herman Martinez",
      #       contact_phone: "3055550000",
      #       contact_title: "Owner"
      #     }],
      #     org_address: "123 Walnut Street",
      #     org_city: "Johnson City",
      #     org_country: "US",
      #     org_entry_name: "pilgrim-planner",
      #     organization_data_org_id: "123",
      #     org_name: "Pilgrim Planner",
      #     org_state: "TN",
      #     org_timezone: -5,
      #     org_type: 0,
      #     org_website: "www.pilgrimageplanner.com",
      #     org_zip: "37615"
      #   )
      #
      # @return [Payabli::Types::EditOrganizationResponse]
      def edit_organization(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::Organization::Types::OrganizationData.new(params).to_h
        non_body_param_names = %w[orgId]
        body = request_data.except(*non_body_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "Organization/#{URI.encode_uri_component(params[:org_id].to_s)}",
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
          Payabli::Types::EditOrganizationResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Delete an organization by ID.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :org_id
      #
      # @example
      #   client.organization.delete_organization(org_id: 123)
      #
      # @return [Payabli::Types::DeleteOrganizationResponse]
      def delete_organization(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "Organization/#{URI.encode_uri_component(params[:org_id].to_s)}",
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
          Payabli::Types::DeleteOrganizationResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Gets an organization's basic information by entry name (entrypoint identifier).
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :entry
      #
      # @example
      #   client.organization.get_basic_organization(entry: "8cfec329267")
      #
      # @return [Payabli::Types::OrganizationQueryRecord]
      def get_basic_organization(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Organization/basic/#{URI.encode_uri_component(params[:entry].to_s)}",
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
          Payabli::Types::OrganizationQueryRecord.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Gets an organization's basic details by org ID.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :org_id
      #
      # @example
      #   client.organization.get_basic_organization_by_id(org_id: 123)
      #
      # @return [Payabli::Types::OrganizationQueryRecord]
      def get_basic_organization_by_id(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Organization/basicById/#{URI.encode_uri_component(params[:org_id].to_s)}",
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
          Payabli::Types::OrganizationQueryRecord.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves details for an organization by ID.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :org_id
      #
      # @example
      #   client.organization.get_organization(org_id: 123)
      #
      # @return [Payabli::Types::OrganizationQueryRecord]
      def get_organization(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Organization/read/#{URI.encode_uri_component(params[:org_id].to_s)}",
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
          Payabli::Types::OrganizationQueryRecord.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves an organization's settings.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :org_id
      #
      # @example
      #   client.organization.get_settings_organization(org_id: 123)
      #
      # @return [Payabli::Types::SettingsQueryRecord]
      def get_settings_organization(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Organization/settings/#{URI.encode_uri_component(params[:org_id].to_s)}",
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
          Payabli::Types::SettingsQueryRecord.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
