# frozen_string_literal: true

module Payabli
  module People
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Lists people with optional filtering and pagination.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :name
      # @option params [String, nil] :email
      # @option params [String, nil] :verification_status
      # @option params [Integer, nil] :limit
      # @option params [Integer, nil] :page
      # @option params [String, nil] :sort_by
      # @option params [String, nil] :sort_order
      #
      # @example
      #   client.people.list_people(
      #     limit: 1,
      #     page: 1
      #   )
      #
      # @return [Payabli::Types::ListPeopleEnvelope]
      def list_people(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["name"] = params[:name] if params.key?(:name)
        query_params["email"] = params[:email] if params.key?(:email)
        query_params["verificationStatus"] = params[:verification_status] if params.key?(:verification_status)
        query_params["limit"] = params[:limit] if params.key?(:limit)
        query_params["page"] = params[:page] if params.key?(:page)
        query_params["sortBy"] = params[:sort_by] if params.key?(:sort_by)
        query_params["sortOrder"] = params[:sort_order] if params.key?(:sort_order)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/people",
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
          Payabli::Types::ListPeopleEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Creates a person, an individual associated with a business such as an
      # owner, director, or signer. Include a `businessRelationship` object to
      # link the person to a business on create; the business reference, role
      # (`personType`), and `ownershipPercentage` go inside that object.
      #
      # A person's job `title` and whether they're the signer (`isSigner`) also
      # belong to the business link, so send them inside `businessRelationship`.
      # A top-level `title` returns a `400` with the message
      # `title moved into the businessRelationship object; send them there instead of at the top level.`
      #
      # @param request_options [Hash]
      # @param params [Payabli::People::Types::CreatePersonRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.people.create_person(
      #     first_name: "Marcus",
      #     middle_name: "James",
      #     last_name: "Delgado",
      #     primary_email: "marcus.delgado@example.com",
      #     secondary_email: "m.delgado@example.net",
      #     primary_phone_number: "3055551212",
      #     secondary_phone_number: "3055559876",
      #     date_of_birth: "1985-03-14",
      #     ssn: "412-55-9021",
      #     nationality: "US",
      #     drivers_license_number: "D1234567",
      #     drivers_license_state: "FL",
      #     external_id: "person-001",
      #     custom_data: {
      #       department: "finance"
      #     },
      #     addresses: [{
      #       address_line_1: "123 Main Street",
      #       address_line_2: "Suite 400",
      #       city_locality: "Miami",
      #       state_province: "FL",
      #       postal_code: "33101",
      #       country: "US",
      #       type: "legal"
      #     }],
      #     identification_documents: [{
      #       type: "passport",
      #       number: "X1234567",
      #       issuing_country: "US",
      #       expiration_date: "2030-06-30"
      #     }],
      #     business_relationship: {
      #       business_reference: "019fed1a-3d6e-75d3-a81e-cba3874b0a55",
      #       person_type: "Owner",
      #       ownership_percentage: 100,
      #       is_primary_controller: true,
      #       is_signer: true,
      #       title: "CEO",
      #       primary_email: "contact@example.com",
      #       secondary_email: "contact.alt@example.net",
      #       primary_phone_number: "3055551212",
      #       secondary_phone_number: "3055559876",
      #       billing_address: {
      #         address_line_1: "123 Main Street",
      #         city_locality: "Miami",
      #         state_province: "FL",
      #         postal_code: "33101",
      #         country: "US",
      #         type: "billing"
      #       },
      #       mailing_address: {
      #         address_line_1: "456 Oak Avenue",
      #         city_locality: "Miami",
      #         state_province: "FL",
      #         postal_code: "33102",
      #         country: "US",
      #         type: "mailing"
      #       }
      #     }
      #   )
      #
      # @return [Payabli::Types::PersonDetailEnvelope]
      def create_person(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/people",
          headers: headers,
          body: Payabli::People::Types::CreatePersonRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PersonDetailEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a person by reference. Sensitive fields such as `ssn` are masked.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :person_reference
      #
      # @example
      #   client.people.get_person(person_reference: "01a0014d-ce1a-7110-9bac-c4c59647a88d")
      #
      # @return [Payabli::Types::PersonDetailEnvelope]
      def get_person(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/people/#{URI.encode_uri_component(params[:person_reference].to_s)}",
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
          Payabli::Types::PersonDetailEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Applies a partial update to a person. Send only the fields you want to change.
      #
      # A person's job title belongs to their business link, not the person. Sending `title` in any form, including
      # `null`, returns a `400` with the message `title moved to the business relationship; update it with PATCH
      # /api/v2/businesses/{businessReference}/people/{personReference}.`
      #
      # @param request_options [Hash]
      # @param params [Payabli::People::Types::UpdatePersonRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :person_reference
      #
      # @example
      #   client.people.update_person(
      #     person_reference: "01a0014d-ce1a-7110-9bac-c4c59647a88d",
      #     primary_phone_number: "3055550199"
      #   )
      #
      # @return [Payabli::Types::PersonUpdatedEnvelope]
      def update_person(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::People::Types::UpdatePersonRequest.new(params).to_h
        non_body_param_names = %w[personReference]
        body = request_data.except(*non_body_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "v2/people/#{URI.encode_uri_component(params[:person_reference].to_s)}",
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
          Payabli::Types::PersonUpdatedEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a person by reference with sensitive fields unmasked.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :person_reference
      #
      # @example
      #   client.people.get_person_unmasked(person_reference: "01a0014d-ce1a-7110-9bac-c4c59647a88d")
      #
      # @return [Payabli::Types::PersonDetailEnvelope]
      def get_person_unmasked(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v2/people/#{URI.encode_uri_component(params[:person_reference].to_s)}/unmasked",
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
          Payabli::Types::PersonDetailEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Searches for people by identity attributes during boarding. The search
      # covers every business in your organization, so use it to find a person
      # before you create them again. To read the people already on a
      # paypoint's business, use a standard `GET` instead.
      # Provide at least one of `firstName` or `lastName`. Each result has a
      # `matchScore` showing how closely it matches, and an external identity
      # vendor can enrich the results. Each result's `dateOfBirth` is masked.
      # To get the full value, use the unmasked search.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Types::PeopleSearchRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :entry
      # @option params [Integer] :org_id
      #
      # @example
      #   client.people.search_people(
      #     entry: "8cfec329267",
      #     org_id: 123,
      #     request: {
      #       firstName: "Marcus",
      #       lastName: "Delgado"
      #     }
      #   )
      #
      # @return [Payabli::Types::PeopleSearchEnvelope]
      def search_people(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[entry org_id]
        query_params = {}
        query_params["entry"] = params[:entry] if params.key?(:entry)
        query_params["orgId"] = params[:org_id] if params.key?(:org_id)
        params = params.except(*query_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/people/search",
          headers: headers,
          query: query_params,
          body: Payabli::Types::PeopleSearchRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PeopleSearchEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Searches for people by identity attributes during boarding, and returns
      # each result's `dateOfBirth` unmasked. The query parameters, request
      # body, and other response fields match the standard people search.
      # Provide at least one of `firstName` or `lastName`.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Types::PeopleSearchRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :entry
      # @option params [Integer] :org_id
      #
      # @example
      #   client.people.search_people_unmasked(
      #     entry: "8cfec329267",
      #     org_id: 123,
      #     request: {
      #       firstName: "Marcus",
      #       lastName: "Delgado"
      #     }
      #   )
      #
      # @return [Payabli::Types::PeopleSearchEnvelope]
      def search_people_unmasked(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[entry org_id]
        query_params = {}
        query_params["entry"] = params[:entry] if params.key?(:entry)
        query_params["orgId"] = params[:org_id] if params.key?(:org_id)
        params = params.except(*query_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v2/people/search/unmasked",
          headers: headers,
          query: query_params,
          body: Payabli::Types::PeopleSearchRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PeopleSearchEnvelope.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
