# frozen_string_literal: true

module PayabliSdk
  module Types
    class BuilderData < Internal::Types::Model
      field :services, -> { PayabliSdk::Types::SSection }, optional: true, nullable: false
      field :attributes, -> { PayabliSdk::Types::ASection }, optional: true, nullable: false
      field :banking, -> { PayabliSdk::Types::DSection }, optional: true, nullable: false
      field :business, -> { PayabliSdk::Types::BSection }, optional: true, nullable: false
      field :owners, -> { PayabliSdk::Types::OSection }, optional: true, nullable: false
      field :processing, -> { PayabliSdk::Types::PSection }, optional: true, nullable: false
    end
  end
end
