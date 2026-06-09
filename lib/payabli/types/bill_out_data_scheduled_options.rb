# frozen_string_literal: true

module Payabli
  module Types
    # Options for scheduled bills.
    class BillOutDataScheduledOptions < Internal::Types::Model
      field :stored_method_id, -> { String }, optional: true, nullable: false, api_name: "storedMethodId"
    end
  end
end
