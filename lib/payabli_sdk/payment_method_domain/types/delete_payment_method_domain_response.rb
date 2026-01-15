# frozen_string_literal: true

module PayabliSdk
  module PaymentMethodDomain
    module Types
      class DeletePaymentMethodDomainResponse < Internal::Types::Model
        field :is_success, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "isSuccess"
        field :page_identifier, -> { String }, optional: false, nullable: false, api_name: "pageIdentifier"
        field :response_data, -> { PayabliSdk::Types::Responsedatanonobject }, optional: false, nullable: false, api_name: "responseData"
        field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"
      end
    end
  end
end
