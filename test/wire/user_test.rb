# frozen_string_literal: true

require_relative "wiremock_test_case"

class UserWireTest < WireMockTestCase
  def setup
    super

    @client = Payabli::Client.new(
      client_id: "test-client-id",
      client_secret: "test-client-secret",
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_user_add_user_with_wiremock
    test_id = "user.add_user.0"

    @client.user.add_user(request_options: {
      additional_headers: {
        "X-Test-Id" => "user.add_user.0"
      }
    })

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/User",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/User",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_user_get_user_with_wiremock
    test_id = "user.get_user.0"

    @client.user.get_user(
      user_id: 1000000,
      entry: "8cfec329267",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "user.get_user.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/User/1000000",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/User/1000000",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_user_edit_user_with_wiremock
    test_id = "user.edit_user.0"

    @client.user.edit_user(
      user_id: 1000000,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "user.edit_user.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "PUT",
      url_path: "/User/1000000",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "PUT",
      url_path: "/User/1000000",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_user_delete_user_with_wiremock
    test_id = "user.delete_user.0"

    @client.user.delete_user(
      user_id: 1000000,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "user.delete_user.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/User/1000000",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "DELETE",
      url_path: "/User/1000000",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_user_auth_user_with_wiremock
    test_id = "user.auth_user.0"

    @client.user.auth_user(
      provider: "provider",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "user.auth_user.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/User/auth/provider",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/User/auth/provider",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_user_auth_refresh_user_with_wiremock
    test_id = "user.auth_refresh_user.0"

    @client.user.auth_refresh_user(request_options: {
      additional_headers: {
        "X-Test-Id" => "user.auth_refresh_user.0"
      }
    })

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/User/authrefresh",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/User/authrefresh",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_user_auth_reset_user_with_wiremock
    test_id = "user.auth_reset_user.0"

    @client.user.auth_reset_user(request_options: {
      additional_headers: {
        "X-Test-Id" => "user.auth_reset_user.0"
      }
    })

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/User/authreset",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/User/authreset",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_user_change_psw_user_with_wiremock
    test_id = "user.change_psw_user.0"

    @client.user.change_psw_user(request_options: {
      additional_headers: {
        "X-Test-Id" => "user.change_psw_user.0"
      }
    })

    verify_request_count(
      test_id: test_id,
      method: "PUT",
      url_path: "/User/authpsw",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "PUT",
      url_path: "/User/authpsw",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_user_logout_user_with_wiremock
    test_id = "user.logout_user.0"

    @client.user.logout_user(request_options: {
      additional_headers: {
        "X-Test-Id" => "user.logout_user.0"
      }
    })

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/User/authlogout",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "GET",
      url_path: "/User/authlogout",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_user_validate_mfa_user_with_wiremock
    test_id = "user.validate_mfa_user.0"

    @client.user.validate_mfa_user(request_options: {
      additional_headers: {
        "X-Test-Id" => "user.validate_mfa_user.0"
      }
    })

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/User/mfa",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/User/mfa",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_user_edit_mfa_user_with_wiremock
    test_id = "user.edit_mfa_user.0"

    @client.user.edit_mfa_user(
      user_id: 1000000,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "user.edit_mfa_user.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "PUT",
      url_path: "/User/mfa/1000000",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "PUT",
      url_path: "/User/mfa/1000000",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end

  def test_user_resend_mfa_code_with_wiremock
    test_id = "user.resend_mfa_code.0"

    @client.user.resend_mfa_code(
      usrname: "usrname",
      entry: "8cfec329267",
      entry_type: 1,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "user.resend_mfa_code.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/User/resendmfa/usrname/8cfec329267/1",
      query_params: nil,
      expected: 1
    )

    verify_auth_headers(
      test_id: test_id,
      method: "POST",
      url_path: "/User/resendmfa/usrname/8cfec329267/1",
      matchers: [
        { name: "Authorization", kind: "present" },
        { name: "requestToken", kind: "absent" }
      ]
    )
  end
end
