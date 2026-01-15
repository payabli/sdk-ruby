# frozen_string_literal: true

module PayabliSdk
  module Types
    class MethodQueryRecords < Internal::Types::Model
      field :bin, -> { String }, optional: true, nullable: false
      field :bin_data, -> { PayabliSdk::Types::BinData }, optional: true, nullable: false, api_name: "binData"
      field :descriptor, -> { String }, optional: true, nullable: false
      field :exp_date, -> { String }, optional: true, nullable: false, api_name: "expDate"
      field :holder_name, -> { String }, optional: true, nullable: false, api_name: "holderName"
      field :id_pmethod, -> { String }, optional: true, nullable: false, api_name: "idPmethod"
      field :last_updated, -> { String }, optional: true, nullable: false, api_name: "lastUpdated"
      field :masked_account, -> { String }, optional: true, nullable: false, api_name: "maskedAccount"
      field :method_, -> { String }, optional: true, nullable: false, api_name: "method"
    end
  end
end
