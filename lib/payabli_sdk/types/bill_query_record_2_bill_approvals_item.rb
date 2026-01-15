# frozen_string_literal: true

module PayabliSdk
  module Types
    class BillQueryRecord2BillApprovalsItem < Internal::Types::Model
      field :approved, -> { Integer }, optional: true, nullable: false
      field :approved_time, -> { String }, optional: true, nullable: false, api_name: "approvedTime"
      field :comments, -> { String }, optional: true, nullable: false
      field :email, -> { String }, optional: true, nullable: false
      field :id, -> { Integer }, optional: true, nullable: false, api_name: "Id"
    end
  end
end
