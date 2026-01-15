# frozen_string_literal: true

module PayabliSdk
  module Bill
    module Types
      class SetApprovedBillRequest < Internal::Types::Model
        field :id_bill, -> { Integer }, optional: false, nullable: false, api_name: "idBill"
        field :approved, -> { String }, optional: false, nullable: false
        field :email, -> { String }, optional: true, nullable: false
      end
    end
  end
end
