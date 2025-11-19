# frozen_string_literal: true

module Payabli
  module Types
    class PaymentCategories < Internal::Types::Model
      field :amount, -> { Integer }, optional: false, nullable: false
      field :description, -> { String }, optional: true, nullable: false
      field :label, -> { String }, optional: false, nullable: false
      field :qty, -> { Integer }, optional: true, nullable: false
    end
  end
end
