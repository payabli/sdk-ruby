# frozen_string_literal: true

module Payabli
  class Client
    # @param base_url [String, nil]
    # @param api_key [String]
    #
    # @return [void]
    def initialize(base_url:, api_key:)
      @raw_client = Payabli::Internal::Http::RawClient.new(
        base_url: base_url || Payabli::Environment::SANDBOX,
        headers: {
          "User-Agent" => "payabli-sdk/1.0.1",
          "X-Fern-Language" => "Ruby",
          requestToken: api_key.to_s
        }
      )
    end

    # @return [Payabli::Bill::Client]
    def bill
      @bill ||= Payabli::Bill::Client.new(client: @raw_client)
    end

    # @return [Payabli::Boarding::Client]
    def boarding
      @boarding ||= Payabli::Boarding::Client.new(client: @raw_client)
    end

    # @return [Payabli::ChargeBacks::Client]
    def charge_backs
      @charge_backs ||= Payabli::ChargeBacks::Client.new(client: @raw_client)
    end

    # @return [Payabli::CheckCapture::Client]
    def check_capture
      @check_capture ||= Payabli::CheckCapture::Client.new(client: @raw_client)
    end

    # @return [Payabli::Cloud::Client]
    def cloud
      @cloud ||= Payabli::Cloud::Client.new(client: @raw_client)
    end

    # @return [Payabli::Customer::Client]
    def customer
      @customer ||= Payabli::Customer::Client.new(client: @raw_client)
    end

    # @return [Payabli::Export::Client]
    def export
      @export ||= Payabli::Export::Client.new(client: @raw_client)
    end

    # @return [Payabli::HostedPaymentPages::Client]
    def hosted_payment_pages
      @hosted_payment_pages ||= Payabli::HostedPaymentPages::Client.new(client: @raw_client)
    end

    # @return [Payabli::Import::Client]
    def import
      @import ||= Payabli::Import::Client.new(client: @raw_client)
    end

    # @return [Payabli::Invoice::Client]
    def invoice
      @invoice ||= Payabli::Invoice::Client.new(client: @raw_client)
    end

    # @return [Payabli::LineItem::Client]
    def line_item
      @line_item ||= Payabli::LineItem::Client.new(client: @raw_client)
    end

    # @return [Payabli::MoneyIn::Client]
    def money_in
      @money_in ||= Payabli::MoneyIn::Client.new(client: @raw_client)
    end

    # @return [Payabli::MoneyOut::Client]
    def money_out
      @money_out ||= Payabli::MoneyOut::Client.new(client: @raw_client)
    end

    # @return [Payabli::Notification::Client]
    def notification
      @notification ||= Payabli::Notification::Client.new(client: @raw_client)
    end

    # @return [Payabli::Notificationlogs::Client]
    def notificationlogs
      @notificationlogs ||= Payabli::Notificationlogs::Client.new(client: @raw_client)
    end

    # @return [Payabli::Ocr::Client]
    def ocr
      @ocr ||= Payabli::Ocr::Client.new(client: @raw_client)
    end

    # @return [Payabli::Organization::Client]
    def organization
      @organization ||= Payabli::Organization::Client.new(client: @raw_client)
    end

    # @return [Payabli::PaymentLink::Client]
    def payment_link
      @payment_link ||= Payabli::PaymentLink::Client.new(client: @raw_client)
    end

    # @return [Payabli::PaymentMethodDomain::Client]
    def payment_method_domain
      @payment_method_domain ||= Payabli::PaymentMethodDomain::Client.new(client: @raw_client)
    end

    # @return [Payabli::Paypoint::Client]
    def paypoint
      @paypoint ||= Payabli::Paypoint::Client.new(client: @raw_client)
    end

    # @return [Payabli::Query::Client]
    def query
      @query ||= Payabli::Query::Client.new(client: @raw_client)
    end

    # @return [Payabli::Statistic::Client]
    def statistic
      @statistic ||= Payabli::Statistic::Client.new(client: @raw_client)
    end

    # @return [Payabli::Subscription::Client]
    def subscription
      @subscription ||= Payabli::Subscription::Client.new(client: @raw_client)
    end

    # @return [Payabli::Templates::Client]
    def templates
      @templates ||= Payabli::Templates::Client.new(client: @raw_client)
    end

    # @return [Payabli::TokenStorage::Client]
    def token_storage
      @token_storage ||= Payabli::TokenStorage::Client.new(client: @raw_client)
    end

    # @return [Payabli::User::Client]
    def user
      @user ||= Payabli::User::Client.new(client: @raw_client)
    end

    # @return [Payabli::Vendor::Client]
    def vendor
      @vendor ||= Payabli::Vendor::Client.new(client: @raw_client)
    end

    # @return [Payabli::Wallet::Client]
    def wallet
      @wallet ||= Payabli::Wallet::Client.new(client: @raw_client)
    end
  end
end
