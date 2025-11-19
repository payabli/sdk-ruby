# frozen_string_literal: true

module Payabli
  module User
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [Payabli::User::Client]
      def initialize(client:)
        @client = client
      end

      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Payabli::Types::UserData]
      #
      # @return [Payabli::User::Types::AddUserResponse]
      def add_user(request_options: {}, **params)
        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "POST",
          path: "User",
          body: Payabli::Types::UserData.new(params).to_h
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::User::Types::AddUserResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::PayabliApiResponseUserMfa]
      def auth_refresh_user(request_options: {}, **_params)
        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "POST",
          path: "User/authrefresh"
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponseUserMfa.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Payabli::User::Types::UserAuthResetRequest]
      #
      # @return [Payabli::User::Types::AuthResetUserResponse]
      def auth_reset_user(request_options: {}, **params)
        _body_prop_names = %i[email entry entry_type]
        _body_bag = params.slice(*_body_prop_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "POST",
          path: "User/authreset",
          body: Payabli::User::Types::UserAuthResetRequest.new(_body_bag).to_h
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::User::Types::AuthResetUserResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # This endpoint requires an application API token.
      #
      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Payabli::User::Types::UserAuthRequest]
      #
      # @return [Payabli::Types::PayabliApiResponseMfaBasic]
      def auth_user(request_options: {}, **params)
        _path_param_names = %i[provider]
        _body = params.except(*_path_param_names)
        _body_prop_names = %i[email entry entry_type psw user_id user_token_id]
        _body_bag = _body.slice(*_body_prop_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "POST",
          path: "User/auth/#{params[:provider]}",
          body: Payabli::User::Types::UserAuthRequest.new(_body_bag).to_h
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponseMfaBasic.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Payabli::User::Types::UserAuthPswResetRequest]
      #
      # @return [Payabli::User::Types::ChangePswUserResponse]
      def change_psw_user(request_options: {}, **params)
        _body_prop_names = %i[psw]
        _body_bag = params.slice(*_body_prop_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "PUT",
          path: "User/authpsw",
          body: Payabli::User::Types::UserAuthPswResetRequest.new(_body_bag).to_h
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::User::Types::ChangePswUserResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::User::Types::DeleteUserResponse]
      def delete_user(request_options: {}, **params)
        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "DELETE",
          path: "User/#{params[:user_id]}"
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::User::Types::DeleteUserResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Payabli::Types::MfaData]
      #
      # @return [Payabli::User::Types::EditMfaUserResponse]
      def edit_mfa_user(request_options: {}, **params)
        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "PUT",
          path: "User/mfa/#{params[:user_id]}",
          body: Payabli::Types::MfaData.new(params).to_h
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::User::Types::EditMfaUserResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Payabli::Types::UserData]
      #
      # @return [Payabli::Types::PayabliApiResponse]
      def edit_user(request_options: {}, **params)
        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "PUT",
          path: "User/#{params[:user_id]}",
          body: Payabli::Types::UserData.new(params).to_h
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::UserQueryRecord]
      def get_user(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.symbolize_keys(params)
        _query_param_names = %i[entry level]
        _query = {}
        _query["entry"] = params[:entry] if params.key?(:entry)
        _query["level"] = params[:level] if params.key?(:level)
        params = params.except(*_query_param_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "GET",
          path: "User/#{params[:user_id]}",
          query: _query
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::UserQueryRecord.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::User::Types::LogoutUserResponse]
      def logout_user(request_options: {}, **_params)
        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "GET",
          path: "User/authlogout"
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::User::Types::LogoutUserResponse.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Hash[untyped, untyped]]
      #
      # @return [Payabli::Types::PayabliApiResponseMfaBasic]
      def resend_mfa_code(request_options: {}, **params)
        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "POST",
          path: "User/resendmfa/#{params[:usrname]}/#{params[:entry]}/#{params[:entry_type]}"
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponseMfaBasic.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Payabli::User::Types::MfaValidationData]
      #
      # @return [Payabli::Types::PayabliApiResponseUserMfa]
      def validate_mfa_user(request_options: {}, **params)
        _body_prop_names = %i[mfa_code mfa_validation_code]
        _body_bag = params.slice(*_body_prop_names)

        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "POST",
          path: "User/mfa",
          body: Payabli::User::Types::MfaValidationData.new(_body_bag).to_h
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponseUserMfa.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end
    end
  end
end
