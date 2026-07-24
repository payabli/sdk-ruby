# frozen_string_literal: true

module Payabli
  module PaymentMethodDomain
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Add a payment method domain to an organization or paypoint.
      #
      # @param request_options [Hash]
      # @param params [Payabli::PaymentMethodDomain::Types::AddPaymentMethodDomainRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.payment_method_domain.add_payment_method_domain(
      #     apple_pay: {
      #       is_enabled: true
      #     },
      #     google_pay: {
      #       is_enabled: true
      #     },
      #     domain_name: "checkout.example.com",
      #     entity_id: 109,
      #     entity_type: "paypoint"
      #   )
      #
      # @return [Payabli::Types::AddPaymentMethodDomainApiResponse]
      def add_payment_method_domain(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "PaymentMethodDomain",
          headers: headers,
          body: Payabli::PaymentMethodDomain::Types::AddPaymentMethodDomainRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::AddPaymentMethodDomainApiResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Cascades a payment method domain to all child entities. All paypoints and suborganization under this parent will
      # inherit this domain and its settings.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :domain_id
      #
      # @example
      #   client.payment_method_domain.cascade_payment_method_domain(domain_id: "pmd_b8237fa45c964d8a9ef27160cd42b8c5")
      #
      # @return [Payabli::Types::PaymentMethodDomainGeneralResponse]
      def cascade_payment_method_domain(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "PaymentMethodDomain/#{URI.encode_uri_component(params[:domain_id].to_s)}/cascade",
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
          Payabli::Types::PaymentMethodDomainGeneralResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get the details for a payment method domain.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :domain_id
      #
      # @example
      #   client.payment_method_domain.get_payment_method_domain(domain_id: "pmd_b8237fa45c964d8a9ef27160cd42b8c5")
      #
      # @return [Payabli::Types::PaymentMethodDomainApiResponse]
      def get_payment_method_domain(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "PaymentMethodDomain/#{URI.encode_uri_component(params[:domain_id].to_s)}",
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
          Payabli::Types::PaymentMethodDomainApiResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Delete a payment method domain. You can't delete an inherited domain, you must delete a domain at the
      # organization level.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :domain_id
      #
      # @example
      #   client.payment_method_domain.delete_payment_method_domain(domain_id: "pmd_b8237fa45c964d8a9ef27160cd42b8c5")
      #
      # @return [Payabli::Types::DeletePaymentMethodDomainResponse]
      def delete_payment_method_domain(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "PaymentMethodDomain/#{URI.encode_uri_component(params[:domain_id].to_s)}",
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
          Payabli::Types::DeletePaymentMethodDomainResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Update a payment method domain's configuration values.
      #
      # @param request_options [Hash]
      # @param params [Payabli::PaymentMethodDomain::Types::UpdatePaymentMethodDomainRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :domain_id
      #
      # @example
      #   client.payment_method_domain.update_payment_method_domain(
      #     domain_id: "pmd_b8237fa45c964d8a9ef27160cd42b8c5",
      #     apple_pay: {
      #       is_enabled: false
      #     },
      #     google_pay: {
      #       is_enabled: false
      #     }
      #   )
      #
      # @return [Payabli::Types::PaymentMethodDomainGeneralResponse]
      def update_payment_method_domain(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::PaymentMethodDomain::Types::UpdatePaymentMethodDomainRequest.new(params).to_h
        non_body_param_names = %w[domainId]
        body = request_data.except(*non_body_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "PaymentMethodDomain/#{URI.encode_uri_component(params[:domain_id].to_s)}",
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
          Payabli::Types::PaymentMethodDomainGeneralResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get a list of payment method domains that belong to a PSP, organization, or paypoint.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer, nil] :entity_id
      # @option params [String, nil] :entity_type
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      #
      # @example
      #   client.payment_method_domain.list_payment_method_domains(
      #     entity_id: 1147,
      #     entity_type: "paypoint"
      #   )
      #
      # @return [Payabli::Types::ListPaymentMethodDomainsResponse]
      def list_payment_method_domains(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["entityId"] = params[:entity_id] if params.key?(:entity_id)
        query_params["entityType"] = params[:entity_type] if params.key?(:entity_type)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "PaymentMethodDomain/list",
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
          Payabli::Types::ListPaymentMethodDomainsResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Verify a new payment method domain. If verification is successful, Apple Pay is automatically activated for the
      # domain.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :domain_id
      #
      # @example
      #   client.payment_method_domain.verify_payment_method_domain(domain_id: "pmd_b8237fa45c964d8a9ef27160cd42b8c5")
      #
      # @return [Payabli::Types::PaymentMethodDomainGeneralResponse]
      def verify_payment_method_domain(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "PaymentMethodDomain/#{URI.encode_uri_component(params[:domain_id].to_s)}/verify",
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
          Payabli::Types::PaymentMethodDomainGeneralResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
