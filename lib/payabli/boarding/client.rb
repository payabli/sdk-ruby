# frozen_string_literal: true

module Payabli
  module Boarding
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Creates a boarding application in an organization. This endpoint requires an application API token.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Types::AddApplicationRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.boarding.add_application(
      #     services: {
      #       ach: {},
      #       card: {
      #         accept_amex: true,
      #         accept_discover: true,
      #         accept_mastercard: true,
      #         accept_visa: true
      #       }
      #     },
      #     annual_revenue: 1000,
      #     average_bill_size: "500",
      #     average_monthly_bill: "5650",
      #     avgmonthly: 1000,
      #     baddress: "123 Walnut Street",
      #     baddress_1: "Suite 103",
      #     bank_data: [{
      #       account_number: "123123100",
      #       bank_account_function: 1,
      #       bank_account_holder_name: "Gruzya Adventure Outfitters LLC",
      #       bank_account_holder_type: "Business",
      #       bank_name: "Test Bank 1",
      #       nickname: "Withdrawal Account",
      #       routing_account: "123123123",
      #       type_account: "Checking",
      #       account_id: "123-456"
      #     }, {
      #       account_number: "123123200",
      #       bank_account_function: 0,
      #       bank_account_holder_name: "Gruzya Adventure Outfitters LLC",
      #       bank_account_holder_type: "Business",
      #       bank_name: "Test Bank 2",
      #       nickname: "Deposit Account",
      #       routing_account: "321321321",
      #       type_account: "Checking",
      #       account_id: "123-789"
      #     }],
      #     bcity: "New Vegas",
      #     bcountry: "US",
      #     binperson: 60,
      #     binphone: 20,
      #     binweb: 20,
      #     bstate: "FL",
      #     bsummary: "Brick and mortar store that sells office supplies",
      #     btype: "Limited Liability Company",
      #     bzip: "33000",
      #     contacts: [{
      #       contact_email: "herman@hermanscoatings.com",
      #       contact_name: "Herman Martinez",
      #       contact_phone: "3055550000",
      #       contact_title: "Owner"
      #     }],
      #     credit_limit: "creditLimit",
      #     dba_name: "Sunshine Gutters",
      #     ein: "123456789",
      #     faxnumber: "1234567890",
      #     highticketamt: 1000,
      #     legal_name: "Sunshine Services, LLC",
      #     license: "2222222FFG",
      #     licstate: "CA",
      #     maddress: "123 Walnut Street",
      #     maddress_1: "STE 900",
      #     mcc: "7777",
      #     mcity: "Johnson City",
      #     mcountry: "US",
      #     mstate: "TN",
      #     mzip: "37615",
      #     org_id: 123,
      #     ownership: [{
      #       oaddress: "33 North St",
      #       ocity: "Any City",
      #       ocountry: "US",
      #       odriverstate: "CA",
      #       ostate: "CA",
      #       ownerdob: "01/01/1990",
      #       ownerdriver: "CA6677778",
      #       owneremail: "test@email.com",
      #       ownername: "John Smith",
      #       ownerpercent: 100,
      #       ownerphone_1: "555888111",
      #       ownerphone_2: "555888111",
      #       ownerssn: "123456789",
      #       ownertitle: "CEO",
      #       ozip: "55555"
      #     }],
      #     phonenumber: "1234567890",
      #     processing_region: "US",
      #     recipient_email: "josephray@example.com",
      #     recipient_email_notification: true,
      #     resumable: true,
      #     signer: {
      #       address: "33 North St",
      #       address_1: "STE 900",
      #       city: "Bristol",
      #       country: "US",
      #       dob: "01/01/1976",
      #       email: "test@email.com",
      #       name: "John Smith",
      #       phone: "555888111",
      #       ssn: "123456789",
      #       state: "TN",
      #       zip: "55555",
      #       pci_attestation: true,
      #       signed_document_reference: "https://example.com/signed-document.pdf",
      #       attestation_date: "04/20/2025",
      #       sign_date: "04/20/2025",
      #       additional_data: {
      #         deviceId: "499585-389fj484-3jcj8hj3",
      #         session: "fifji4-fiu443-fn4843",
      #         timeWithCompany: "6 Years"
      #       }
      #     },
      #     startdate: "01/01/1990",
      #     tax_fill_name: "Sunshine LLC",
      #     template_id: 22,
      #     ticketamt: 1000,
      #     website: "www.example.com",
      #     when_charged: "When Service Provided",
      #     when_delivered: "Over 30 Days",
      #     when_provided: "30 Days or Less",
      #     when_refunded: "30 Days or Less"
      #   )
      #
      # @return [Payabli::Types::PayabliApiResponse00Responsedatanonobject]
      def add_application(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "Boarding/app",
          headers: headers,
          body: Payabli::Types::AddApplicationRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponse00Responsedatanonobject.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Updates a boarding application by ID. This endpoint requires an application API token.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Types::ApplicationData]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :app_id
      #
      # @example
      #   client.boarding.update_application(app_id: 352)
      #
      # @return [Payabli::Types::PayabliApiResponse00Responsedatanonobject]
      def update_application(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "Boarding/app/#{URI.encode_uri_component(params[:app_id].to_s)}",
          headers: headers,
          body: Payabli::Types::ApplicationData.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponse00Responsedatanonobject.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Deletes a boarding application by ID.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :app_id
      #
      # @example
      #   client.boarding.delete_application(app_id: 352)
      #
      # @return [Payabli::Types::PayabliApiResponse00Responsedatanonobject]
      def delete_application(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "Boarding/app/#{URI.encode_uri_component(params[:app_id].to_s)}",
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
          Payabli::Types::PayabliApiResponse00Responsedatanonobject.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves the details for a boarding application by ID.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :app_id
      #
      # @example
      #   client.boarding.get_application(app_id: 352)
      #
      # @return [Payabli::Types::ApplicationDetailsRecord]
      def get_application(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Boarding/read/#{URI.encode_uri_component(params[:app_id].to_s)}",
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
          Payabli::Types::ApplicationDetailsRecord.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Gets a boarding application by authentication information. This endpoint requires an `application` API token.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Boarding::Types::RequestAppByAuth]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :x_id
      #
      # @example
      #   client.boarding.get_application_by_auth(
      #     x_id: "17E",
      #     email: "admin@email.com",
      #     reference_id: "129-219"
      #   )
      #
      # @return [Payabli::Types::ApplicationQueryRecord]
      def get_application_by_auth(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::Boarding::Types::RequestAppByAuth.new(params).to_h
        non_body_param_names = %w[xId]
        body = request_data.except(*non_body_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "Boarding/read/#{URI.encode_uri_component(params[:x_id].to_s)}",
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
          Payabli::Types::ApplicationQueryRecord.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves details for a boarding link, by ID.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :boarding_link_id
      #
      # @example
      #   client.boarding.get_by_id_link_application(boarding_link_id: 91)
      #
      # @return [Payabli::Types::BoardingLinkQueryRecord]
      def get_by_id_link_application(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Boarding/linkbyId/#{URI.encode_uri_component(params[:boarding_link_id].to_s)}",
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
          Payabli::Types::BoardingLinkQueryRecord.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get details for a boarding link using the boarding template ID. This endpoint requires an application API token.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :template_id
      #
      # @example
      #   client.boarding.get_by_template_id_link_application(template_id: 80)
      #
      # @return [Payabli::Types::BoardingLinkQueryRecord]
      def get_by_template_id_link_application(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Boarding/linkbyTemplate/#{URI.encode_uri_component(params[:template_id].to_s)}",
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
          Payabli::Types::BoardingLinkQueryRecord.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a link and the verification code used to log into an existing boarding application. You can also use
      # this endpoint to send a link and referenceId for an existing boarding application to an email address. The
      # recipient can use the referenceId and email address to access and edit the application.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :app_id
      # @option params [String] :mail_2
      # @option params [Boolean, nil] :send_email
      #
      # @example
      #   client.boarding.get_external_application(
      #     app_id: 352,
      #     mail_2: "mail2"
      #   )
      #
      # @return [Payabli::Types::PayabliApiResponse00]
      def get_external_application(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["sendEmail"] = params[:send_email] if params.key?(:send_email)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "Boarding/applink/#{URI.encode_uri_component(params[:app_id].to_s)}/#{URI.encode_uri_component(params[:mail_2].to_s)}",
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
          Payabli::Types::PayabliApiResponse00.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves the details for a boarding link, by reference name. This endpoint requires an application API token.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :boarding_link_reference
      #
      # @example
      #   client.boarding.get_link_application(boarding_link_reference: "myorgaccountname-00091")
      #
      # @return [Payabli::Types::BoardingLinkQueryRecord]
      def get_link_application(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Boarding/link/#{URI.encode_uri_component(params[:boarding_link_reference].to_s)}",
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
          Payabli::Types::BoardingLinkQueryRecord.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Returns a list of boarding applications for an organization. Use filters to limit results. Include the
      # `exportFormat` query parameter to return the results as a file instead of a JSON response.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :org_id
      # @option params [Payabli::Types::ExportFormat, nil] :export_format
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      # @option params [String, nil] :sort_by
      #
      # @example
      #   client.boarding.list_applications(
      #     org_id: 123,
      #     from_record: 251,
      #     limit_record: 0,
      #     sort_by: "desc(field_name)"
      #   )
      #
      # @return [Payabli::Types::QueryBoardingAppsListResponse]
      def list_applications(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["exportFormat"] = params[:export_format] if params.key?(:export_format)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        query_params["sortBy"] = params[:sort_by] if params.key?(:sort_by)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Query/boarding/#{URI.encode_uri_component(params[:org_id].to_s)}",
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
          Payabli::Types::QueryBoardingAppsListResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Return a list of boarding links for an organization. Use filters to limit results.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :org_id
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      # @option params [String, nil] :sort_by
      #
      # @example
      #   client.boarding.list_boarding_links(
      #     org_id: 123,
      #     from_record: 251,
      #     limit_record: 0,
      #     sort_by: "desc(field_name)"
      #   )
      #
      # @return [Payabli::Types::QueryBoardingLinksResponse]
      def list_boarding_links(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        query_params["sortBy"] = params[:sort_by] if params.key?(:sort_by)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Query/boardinglinks/#{URI.encode_uri_component(params[:org_id].to_s)}",
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
          Payabli::Types::QueryBoardingLinksResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Creates a new boarding application linked to an existing paypoint as part of the multi-product boarding flow.
      # Use this endpoint to add new services to a paypoint without creating a duplicate record. The system copies
      # eligible business, contact, banking, and address data from the paypoint to the new application based on 1:1
      # field matching. The merchant only needs to provide fields that are specific to the new service. See the
      # [Multi-product boarding](/guides/pay-ops-developer-boarding-multi-product) guide for the full flow.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Boarding::Types::CreateApplicationFromPaypointRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.boarding.add_service_to_paypoint_from_app(
      #     paypoint_id: 3040,
      #     template_id: 456,
      #     recipient_email: "merchant@example.com",
      #     return_boarding_access_info_in_line: true,
      #     on_create: ["submitApplication"]
      #   )
      #
      # @return [Payabli::Types::CreateApplicationFromPaypointResponse]
      def add_service_to_paypoint_from_app(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "Boarding/applications",
          headers: headers,
          body: Payabli::Boarding::Types::CreateApplicationFromPaypointRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::CreateApplicationFromPaypointResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Returns all boarding applications associated with a specific paypoint, including those created through the
      # multi-product boarding flow. Use this endpoint to track underwriting progress across multiple service additions
      # or to build reporting views. See the [Multi-product boarding](/guides/pay-ops-developer-boarding-multi-product)
      # guide for the full flow.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :paypoint_id
      #
      # @example
      #   client.boarding.get_applications_by_paypoint_id(paypoint_id: 3040)
      #
      # @return [Payabli::Types::QueryBoardingAppsListResponse]
      def get_applications_by_paypoint_id(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Boarding/applications/#{URI.encode_uri_component(params[:paypoint_id].to_s)}",
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
          Payabli::Types::QueryBoardingAppsListResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
