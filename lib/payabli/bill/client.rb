# frozen_string_literal: true

module Payabli
  module Bill
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Creates a bill in an entrypoint.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Bill::Types::BillOutData]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :entry
      # @option params [String, nil] :idempotency_key
      #
      # @return [Payabli::Bill::Types::BillResponse]
      def add_bill(request_options: {}, **params)
        path_param_names = %i[entry]
        body_params = params.except(*path_param_names)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "Bill/single/#{params[:entry]}",
          body: Payabli::Bill::Types::BillOutData.new(body_params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Bill::Types::BillResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Delete a file attached to a bill.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :id_bill
      # @option params [String] :filename
      # @option params [Boolean, nil] :return_object
      #
      # @return [Payabli::Bill::Types::BillResponse]
      def delete_attached_from_bill(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        query_param_names = %i[return_object]
        query_params = {}
        query_params["returnObject"] = params[:return_object] if params.key?(:return_object)
        params = params.except(*query_param_names)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "Bill/attachedFileFromBill/#{params[:id_bill]}/#{params[:filename]}",
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
          Payabli::Bill::Types::BillResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Deletes a bill by ID.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :id_bill
      #
      # @return [Payabli::Bill::Types::BillResponse]
      def delete_bill(request_options: {}, **params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "Bill/#{params[:id_bill]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Bill::Types::BillResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Updates a bill by ID.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Bill::Types::BillOutData]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :id_bill
      #
      # @return [Payabli::Bill::Types::EditBillResponse]
      def edit_bill(request_options: {}, **params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "Bill/#{params[:id_bill]}",
          body: Payabli::Bill::Types::BillOutData.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Bill::Types::EditBillResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a file attached to a bill, either as a binary file or as a Base64-encoded string.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :id_bill
      # @option params [String] :filename
      # @option params [Boolean, nil] :return_object
      #
      # @return [Payabli::Types::FileContent]
      def get_attached_from_bill(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        query_param_names = %i[return_object]
        query_params = {}
        query_params["returnObject"] = params[:return_object] if params.key?(:return_object)
        params = params.except(*query_param_names)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Bill/attachedFileFromBill/#{params[:id_bill]}/#{params[:filename]}",
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
          Payabli::Types::FileContent.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a bill by ID from an entrypoint.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :id_bill
      #
      # @return [Payabli::Bill::Types::GetBillResponse]
      def get_bill(request_options: {}, **params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Bill/#{params[:id_bill]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Bill::Types::GetBillResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieve a list of bills for an entrypoint. Use filters to limit results. Include the `exportFormat` query
      # parameter to return the results as a file instead of a JSON response.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :entry
      # @option params [Payabli::Types::ExportFormat, nil] :export_format
      # @option params [Integer, nil] :from_record
      # @option params [Integer, nil] :limit_record
      # @option params [Hash[String, String, nil], nil] :parameters
      # @option params [String, nil] :sort_by
      #
      # @return [Payabli::Types::BillQueryResponse]
      def list_bills(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        query_param_names = %i[export_format from_record limit_record parameters sort_by]
        query_params = {}
        query_params["exportFormat"] = params[:export_format] if params.key?(:export_format)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        query_params["sortBy"] = params[:sort_by] if params.key?(:sort_by)
        params = params.except(*query_param_names)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Query/bills/#{params[:entry]}",
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
          Payabli::Types::BillQueryResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieve a list of bills for an organization. Use filters to limit results. Include the `exportFormat` query
      # parameter to return the results as a file instead of a JSON response.
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
      # @return [Payabli::Types::BillQueryResponse]
      def list_bills_org(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        query_param_names = %i[export_format from_record limit_record parameters sort_by]
        query_params = {}
        query_params["exportFormat"] = params[:export_format] if params.key?(:export_format)
        query_params["fromRecord"] = params[:from_record] if params.key?(:from_record)
        query_params["limitRecord"] = params[:limit_record] if params.key?(:limit_record)
        query_params["parameters"] = params[:parameters] if params.key?(:parameters)
        query_params["sortBy"] = params[:sort_by] if params.key?(:sort_by)
        params = params.except(*query_param_names)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Query/bills/org/#{params[:org_id]}",
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
          Payabli::Types::BillQueryResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Modify the list of users the bill is sent to for approval.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :id_bill
      #
      # @return [Payabli::Bill::Types::ModifyApprovalBillResponse]
      def modify_approval_bill(request_options: {}, **params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "Bill/approval/#{params[:id_bill]}",
          body: params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Bill::Types::ModifyApprovalBillResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Send a bill to a user or list of users to approve.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :id_bill
      # @option params [Boolean, nil] :autocreate_user
      # @option params [String, nil] :idempotency_key
      #
      # @return [Payabli::Bill::Types::BillResponse]
      def send_to_approval_bill(request_options: {}, **params)
        path_param_names = %i[id_bill]
        body_params = params.except(*path_param_names)

        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        query_param_names = %i[autocreate_user]
        query_params = {}
        query_params["autocreateUser"] = params[:autocreate_user] if params.key?(:autocreate_user)
        params = params.except(*query_param_names)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "Bill/approval/#{params[:id_bill]}",
          query: query_params,
          body: body_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Bill::Types::BillResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Approve or disapprove a bill by ID.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :id_bill
      # @option params [String] :approved
      # @option params [String, nil] :email
      #
      # @return [Payabli::Bill::Types::SetApprovedBillResponse]
      def set_approved_bill(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        query_param_names = %i[email]
        query_params = {}
        query_params["email"] = params[:email] if params.key?(:email)
        params = params.except(*query_param_names)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "Bill/approval/#{params[:id_bill]}/#{params[:approved]}",
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
          Payabli::Bill::Types::SetApprovedBillResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
