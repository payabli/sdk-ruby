# frozen_string_literal: true

module Payabli
  module Statistic
    module Types
      class StatisticsVendorQueryRecord < Internal::Types::Model
        field :stat_x, -> { String }, optional: false, nullable: false, api_name: "statX"
        field :active, -> { Integer }, optional: false, nullable: false
        field :active_volume, -> { Integer }, optional: false, nullable: false, api_name: "activeVolume"
        field :sent_to_approval, -> { Integer }, optional: false, nullable: false, api_name: "sentToApproval"
        field :sent_to_approval_volume, -> { Integer }, optional: false, nullable: false, api_name: "sentToApprovalVolume"
        field :to_approval, -> { Integer }, optional: false, nullable: false, api_name: "toApproval"
        field :to_approval_volume, -> { Integer }, optional: false, nullable: false, api_name: "toApprovalVolume"
        field :approved, -> { Integer }, optional: false, nullable: false
        field :approved_volume, -> { Integer }, optional: false, nullable: false, api_name: "approvedVolume"
        field :disapproved, -> { Integer }, optional: false, nullable: false
        field :disapproved_volume, -> { Integer }, optional: false, nullable: false, api_name: "disapprovedVolume"
        field :cancelled, -> { Integer }, optional: false, nullable: false
        field :cancelled_volume, -> { Integer }, optional: false, nullable: false, api_name: "cancelledVolume"
        field :in_transit, -> { Integer }, optional: false, nullable: false, api_name: "inTransit"
        field :in_transit_volume, -> { Integer }, optional: false, nullable: false, api_name: "inTransitVolume"
        field :paid, -> { Integer }, optional: false, nullable: false
        field :paid_volume, -> { Integer }, optional: false, nullable: false, api_name: "paidVolume"
      end
    end
  end
end
