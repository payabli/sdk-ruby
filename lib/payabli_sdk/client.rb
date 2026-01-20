# frozen_string_literal: true

module PayabliSdk
  class Client
    # @param base_url [String, nil]
    # @param api_key [String]
    #
    # @return [void]
    def initialize(api_key:, base_url: nil)
      @raw_client = PayabliSdk::Internal::Http::RawClient.new(
        base_url: base_url || PayabliSdk::Environment::SANDBOX,
        headers: {
          "User-Agent" => "payabli-sdk/2.2.4",
          "X-Fern-Language" => "Ruby",
          requestToken: api_key.to_s
        }
      )
    end

    # @return [PayabliSdk::Bill::Client]
    def bill
      @bill ||= PayabliSdk::Bill::Client.new(client: @raw_client)
    end

    # @return [PayabliSdk::Boarding::Client]
    def boarding
      @boarding ||= PayabliSdk::Boarding::Client.new(client: @raw_client)
    end

    # @return [PayabliSdk::ChargeBacks::Client]
    def charge_backs
      @charge_backs ||= PayabliSdk::ChargeBacks::Client.new(client: @raw_client)
    end

    # @return [PayabliSdk::CheckCapture::Client]
    def check_capture
      @check_capture ||= PayabliSdk::CheckCapture::Client.new(client: @raw_client)
    end

    # @return [PayabliSdk::Cloud::Client]
    def cloud
      @cloud ||= PayabliSdk::Cloud::Client.new(client: @raw_client)
    end

    # @return [PayabliSdk::Customer::Client]
    def customer
      @customer ||= PayabliSdk::Customer::Client.new(client: @raw_client)
    end

    # @return [PayabliSdk::Export::Client]
    def export
      @export ||= PayabliSdk::Export::Client.new(client: @raw_client)
    end

    # @return [PayabliSdk::HostedPaymentPages::Client]
    def hosted_payment_pages
      @hosted_payment_pages ||= PayabliSdk::HostedPaymentPages::Client.new(client: @raw_client)
    end

    # @return [PayabliSdk::Import::Client]
    def import
      @import ||= PayabliSdk::Import::Client.new(client: @raw_client)
    end

    # @return [PayabliSdk::Invoice::Client]
    def invoice
      @invoice ||= PayabliSdk::Invoice::Client.new(client: @raw_client)
    end

    # @return [PayabliSdk::LineItem::Client]
    def line_item
      @line_item ||= PayabliSdk::LineItem::Client.new(client: @raw_client)
    end

    # @return [PayabliSdk::MoneyIn::Client]
    def money_in
      @money_in ||= PayabliSdk::MoneyIn::Client.new(client: @raw_client)
    end

    # @return [PayabliSdk::MoneyOut::Client]
    def money_out
      @money_out ||= PayabliSdk::MoneyOut::Client.new(client: @raw_client)
    end

    # @return [PayabliSdk::Notification::Client]
    def notification
      @notification ||= PayabliSdk::Notification::Client.new(client: @raw_client)
    end

    # @return [PayabliSdk::Notificationlogs::Client]
    def notificationlogs
      @notificationlogs ||= PayabliSdk::Notificationlogs::Client.new(client: @raw_client)
    end

    # @return [PayabliSdk::Ocr::Client]
    def ocr
      @ocr ||= PayabliSdk::Ocr::Client.new(client: @raw_client)
    end

    # @return [PayabliSdk::Organization::Client]
    def organization
      @organization ||= PayabliSdk::Organization::Client.new(client: @raw_client)
    end

    # @return [PayabliSdk::PaymentLink::Client]
    def payment_link
      @payment_link ||= PayabliSdk::PaymentLink::Client.new(client: @raw_client)
    end

    # @return [PayabliSdk::PaymentMethodDomain::Client]
    def payment_method_domain
      @payment_method_domain ||= PayabliSdk::PaymentMethodDomain::Client.new(client: @raw_client)
    end

    # @return [PayabliSdk::Paypoint::Client]
    def paypoint
      @paypoint ||= PayabliSdk::Paypoint::Client.new(client: @raw_client)
    end

    # @return [PayabliSdk::Query::Client]
    def query
      @query ||= PayabliSdk::Query::Client.new(client: @raw_client)
    end

    # @return [PayabliSdk::Statistic::Client]
    def statistic
      @statistic ||= PayabliSdk::Statistic::Client.new(client: @raw_client)
    end

    # @return [PayabliSdk::Subscription::Client]
    def subscription
      @subscription ||= PayabliSdk::Subscription::Client.new(client: @raw_client)
    end

    # @return [PayabliSdk::Templates::Client]
    def templates
      @templates ||= PayabliSdk::Templates::Client.new(client: @raw_client)
    end

    # @return [PayabliSdk::TokenStorage::Client]
    def token_storage
      @token_storage ||= PayabliSdk::TokenStorage::Client.new(client: @raw_client)
    end

    # @return [PayabliSdk::User::Client]
    def user
      @user ||= PayabliSdk::User::Client.new(client: @raw_client)
    end

    # @return [PayabliSdk::Vendor::Client]
    def vendor
      @vendor ||= PayabliSdk::Vendor::Client.new(client: @raw_client)
    end

    # @return [PayabliSdk::Wallet::Client]
    def wallet
      @wallet ||= PayabliSdk::Wallet::Client.new(client: @raw_client)
    end
  end
end
