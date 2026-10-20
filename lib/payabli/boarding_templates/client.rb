# frozen_string_literal: true

module Payabli
  module BoardingTemplates
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Lists the boarding templates an organization owns, plus templates
      # inherited from ancestor organizations. Scope the listing with the
      # required `orgId` query parameter. You can filter by `status`, `name`,
      # `slug`, `orgName`, and `inherited`, and page through results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :org_id
      # @option params [Payabli::Types::TemplateStatus, nil] :status
      # @option params [String, nil] :name
      # @option params [String, nil] :slug
      # @option params [String, nil] :org_name
      # @option params [Boolean, nil] :inherited
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      #
      # @example
      #   client.boarding_templates.list_templates(org_id: 123)
      #
      # @return [Payabli::Types::ListTemplatesResponse]
      def list_templates(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["orgId"] = params[:org_id] if params.key?(:org_id)
        query_params["status"] = params[:status] if params.key?(:status)
        query_params["name"] = params[:name] if params.key?(:name)
        query_params["slug"] = params[:slug] if params.key?(:slug)
        query_params["orgName"] = params[:org_name] if params.key?(:org_name)
        query_params["inherited"] = params[:inherited] if params.key?(:inherited)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/templates",
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
          Payabli::Types::ListTemplatesResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a boarding template by UUID, including its current content version.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :uuid
      #
      # @example
      #   client.boarding_templates.get_template(uuid: "019ff129-d393-7761-9a31-e5afe85b4081")
      #
      # @return [Payabli::Types::Template]
      def get_template(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/templates/#{URI.encode_uri_component(params[:uuid].to_s)}",
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
          Payabli::Types::Template.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Archives a boarding template by UUID. Archiving is a soft delete: the
      # template stays readable with `status: archived`, so archiving an
      # already-archived template returns `409`, not another success. Unknown
      # templates return `404`.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :uuid
      #
      # @example
      #   client.boarding_templates.archive_template(uuid: "019ff129-d393-7761-9a31-e5afe85b4081")
      #
      # @return [untyped]
      def archive_template(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "v2/templates/#{URI.encode_uri_component(params[:uuid].to_s)}",
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

      # Retrieves a specific immutable content version of a template.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :uuid
      # @option params [String] :version_uuid
      #
      # @example
      #   client.boarding_templates.get_template_version(
      #     uuid: "019ff129-d393-7761-9a31-e5afe85b4081",
      #     version_uuid: "019ff129-d396-74c4-86da-ae3d082d7ef9"
      #   )
      #
      # @return [Payabli::Types::TemplateVersion]
      def get_template_version(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/templates/#{URI.encode_uri_component(params[:uuid].to_s)}/versions/#{URI.encode_uri_component(params[:version_uuid].to_s)}",
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
          Payabli::Types::TemplateVersion.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
