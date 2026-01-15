# frozen_string_literal: true

module PayabliSdk
  module Types
    class DocumentSection < Internal::Types::Model
      field :visble, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :sub_footer, -> { String }, optional: true, nullable: false, api_name: "subFooter"
      field :sub_header, -> { String }, optional: true, nullable: false, api_name: "subHeader"
      field :deposit_bank, -> { PayabliSdk::Types::BankSection }, optional: true, nullable: false, api_name: "depositBank"
      field :minimum_documents, -> { Integer }, optional: true, nullable: false, api_name: "minimumDocuments"
      field :upload_documents, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "uploadDocuments"
      field :bank_data, -> { PayabliSdk::Types::BankSection }, optional: true, nullable: false, api_name: "bankData"
      field :terms_and_conditions, -> { PayabliSdk::Types::DocumentSectionTermsAndConditions }, optional: true, nullable: false, api_name: "termsAndConditions"
      field :signer, -> { PayabliSdk::Types::SignerSection }, optional: true, nullable: false
      field :visible, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :withdrawal_bank, -> { PayabliSdk::Types::BankSection }, optional: true, nullable: false, api_name: "withdrawalBank"
    end
  end
end
