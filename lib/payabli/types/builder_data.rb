# frozen_string_literal: true

module Payabli
  module Types
    class BuilderData < Internal::Types::Model
      field :services, -> { Payabli::Types::SSection }, optional: true, nullable: false
      field :attributes, -> { Payabli::Types::ASection }, optional: true, nullable: false
      field :banking, -> { Payabli::Types::DSection }, optional: true, nullable: false
      field :business, -> { Payabli::Types::BSection }, optional: true, nullable: false
      field :owners, -> { Payabli::Types::OSection }, optional: true, nullable: false
      field :processing, -> { Payabli::Types::PSection }, optional: true, nullable: false
    end
  end
end
