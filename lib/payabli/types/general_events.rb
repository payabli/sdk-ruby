# frozen_string_literal: true

module Payabli
  module Types
    class GeneralEvents < Internal::Types::Model
      field :description, -> { String }, optional: true, nullable: false
      field :event_time, -> { String }, optional: true, nullable: false, api_name: "eventTime"
      field :extra_data, lambda {
        Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]
      }, optional: true, nullable: false, api_name: "extraData"
      field :ref_data, -> { String }, optional: true, nullable: false, api_name: "refData"
      field :source, -> { String }, optional: true, nullable: false
    end
  end
end
