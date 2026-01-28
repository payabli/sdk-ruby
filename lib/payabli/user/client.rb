# frozen_string_literal: true

module Payabli
  module User
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Use this endpoint to add a new user to an organization.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Types::UserData]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Payabli::User::Types::AddUserResponse]
      def add_user(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "User",
          body: Payabli::Types::UserData.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::User::Types::AddUserResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Use this endpoint to refresh the authentication token for a user within an organization.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Payabli::Types::PayabliApiResponseUserMfa]
      def auth_refresh_user(request_options: {}, **params)
        Payabli::Internal::Types::Utils.normalize_keys(params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "User/authrefresh",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponseUserMfa.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Use this endpoint to initiate a password reset for a user within an organization.
      #
      # @param request_options [Hash]
      # @param params [Payabli::User::Types::UserAuthResetRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Payabli::User::Types::AuthResetUserResponse]
      def auth_reset_user(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "User/authreset",
          body: Payabli::User::Types::UserAuthResetRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::User::Types::AuthResetUserResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # This endpoint requires an application API token.
      #
      # @param request_options [Hash]
      # @param params [Payabli::User::Types::UserAuthRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :provider
      #
      # @return [Payabli::Types::PayabliApiResponseMfaBasic]
      def auth_user(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::User::Types::UserAuthRequest.new(params).to_h
        non_body_param_names = ["provider"]
        body = request_data.except(*non_body_param_names)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "User/auth/#{params[:provider]}",
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
          Payabli::Types::PayabliApiResponseMfaBasic.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Use this endpoint to change the password for a user within an organization.
      #
      # @param request_options [Hash]
      # @param params [Payabli::User::Types::UserAuthPswResetRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Payabli::User::Types::ChangePswUserResponse]
      def change_psw_user(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "User/authpsw",
          body: Payabli::User::Types::UserAuthPswResetRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::User::Types::ChangePswUserResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Use this endpoint to delete a specific user within an organization.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :user_id
      #
      # @return [Payabli::User::Types::DeleteUserResponse]
      def delete_user(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "User/#{params[:user_id]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::User::Types::DeleteUserResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Use this endpoint to enable or disable multi-factor authentication (MFA) for a user within an organization.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Types::MfaData]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :user_id
      #
      # @return [Payabli::User::Types::EditMfaUserResponse]
      def edit_mfa_user(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "User/mfa/#{params[:user_id]}",
          body: Payabli::Types::MfaData.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::User::Types::EditMfaUserResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Use this endpoint to modify the details of a specific user within an organization.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Types::UserData]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :user_id
      #
      # @return [Payabli::Types::PayabliApiResponse]
      def edit_user(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "User/#{params[:user_id]}",
          body: Payabli::Types::UserData.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Use this endpoint to retrieve information about a specific user within an organization.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :user_id
      # @option params [String, nil] :entry
      # @option params [Integer, nil] :level
      #
      # @return [Payabli::Types::UserQueryRecord]
      def get_user(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[entry level]
        query_params = {}
        query_params["entry"] = params[:entry] if params.key?(:entry)
        query_params["level"] = params[:level] if params.key?(:level)
        params = params.except(*query_param_names)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "User/#{params[:user_id]}",
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
          Payabli::Types::UserQueryRecord.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Use this endpoint to log a user out from the system.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Payabli::User::Types::LogoutUserResponse]
      def logout_user(request_options: {}, **params)
        Payabli::Internal::Types::Utils.normalize_keys(params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "User/authlogout",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::User::Types::LogoutUserResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Resends the MFA code to the user via the selected MFA mode (email or SMS).
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :usrname
      # @option params [String] :entry
      # @option params [Integer] :entry_type
      #
      # @return [Payabli::Types::PayabliApiResponseMfaBasic]
      def resend_mfa_code(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "User/resendmfa/#{params[:usrname]}/#{params[:entry]}/#{params[:entry_type]}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponseMfaBasic.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Use this endpoint to validate the multi-factor authentication (MFA) code for a user within an organization.
      #
      # @param request_options [Hash]
      # @param params [Payabli::User::Types::MfaValidationData]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Payabli::Types::PayabliApiResponseUserMfa]
      def validate_mfa_user(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "User/mfa",
          body: Payabli::User::Types::MfaValidationData.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponseUserMfa.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
