# frozen_string_literal: true

module Payabli
  module Types
    class Check < Internal::Types::Model
      field :ach_holder, -> { String }, optional: false, nullable: false, api_name: "achHolder"
      field :method_, -> { String }, optional: false, nullable: false, api_name: "method"
    end
  end
end
