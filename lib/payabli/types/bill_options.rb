# frozen_string_literal: true

module Payabli
  module Types
    class BillOptions < Internal::Types::Model
      field :include_paylink, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "includePaylink"
      field :include_pdf, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "includePdf"
    end
  end
end
