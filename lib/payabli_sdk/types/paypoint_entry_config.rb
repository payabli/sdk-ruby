# frozen_string_literal: true

module PayabliSdk
  module Types
    class PaypointEntryConfig < Internal::Types::Model
      field :entry_comment, -> { String }, optional: true, nullable: false, api_name: "EntryComment"
      field :entry_logo, -> { String }, optional: true, nullable: false, api_name: "EntryLogo"
      field :entry_name, -> { String }, optional: true, nullable: false, api_name: "EntryName"
      field :entry_pages, -> { Internal::Types::Array[PayabliSdk::Types::PayabliPages] }, optional: true, nullable: false, api_name: "EntryPages"
      field :entry_subtitle, -> { String }, optional: true, nullable: false, api_name: "EntrySubtitle"
      field :entry_title, -> { String }, optional: true, nullable: false, api_name: "EntryTitle"
      field :id_entry, -> { Integer }, optional: true, nullable: false, api_name: "IdEntry"
      field :paypoint, -> { PayabliSdk::Types::PaypointData }, optional: true, nullable: false, api_name: "Paypoint"
    end
  end
end
