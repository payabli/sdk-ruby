# frozen_string_literal: true

module Payabli
  module Types
    # Information about the report notification configuration (report-email, report-web).
    class NotificationReportRequest < Internal::Types::Model
      field :content, -> { Payabli::Types::NotificationReportRequestContent }, optional: false, nullable: false
      field :frequency, -> { Payabli::Types::NotificationReportRequestFrequency }, optional: false, nullable: false
      field :method_, lambda {
        Payabli::Types::NotificationReportRequestMethod
      }, optional: false, nullable: false, api_name: "method"
      field :owner_id, -> { String }, optional: true, nullable: false, api_name: "ownerId"
      field :owner_type, -> { Integer }, optional: false, nullable: false, api_name: "ownerType"
      field :status, -> { Integer }, optional: true, nullable: false
      field :target, -> { String }, optional: false, nullable: false
    end
  end
end
