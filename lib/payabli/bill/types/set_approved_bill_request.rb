# frozen_string_literal: true

module Payabli
  module Bill
    module Types
      class SetApprovedBillRequest < Internal::Types::Model
        field :approved, -> { String }, optional: false, nullable: false
        field :id_bill, -> { Integer }, optional: false, nullable: false, api_name: "idBill"
        field :email, -> { String }, optional: true, nullable: false
      end
    end
  end
end
