# frozen_string_literal: true

module PayabliSdk
  module CheckCapture
    module Types
      # Response model for check capture processing.
      class CheckCaptureResponse < Internal::Types::Model
        field :id, -> { String }, optional: true, nullable: false
        field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
        field :process_date, -> { String }, optional: false, nullable: false, api_name: "processDate"
        field :ocr_micr, -> { String }, optional: true, nullable: false, api_name: "ocrMicr"
        field :ocr_micr_status, -> { String }, optional: true, nullable: false, api_name: "ocrMicrStatus"
        field :ocr_micr_confidence, -> { String }, optional: true, nullable: false, api_name: "ocrMicrConfidence"
        field :ocr_account_number, -> { String }, optional: true, nullable: false, api_name: "ocrAccountNumber"
        field :ocr_routing_number, -> { String }, optional: true, nullable: false, api_name: "ocrRoutingNumber"
        field :ocr_check_number, -> { String }, optional: true, nullable: false, api_name: "ocrCheckNumber"
        field :ocr_check_tran_code, -> { String }, optional: true, nullable: false, api_name: "ocrCheckTranCode"
        field :ocr_amount, -> { String }, optional: true, nullable: false, api_name: "ocrAmount"
        field :ocr_amount_status, -> { String }, optional: true, nullable: false, api_name: "ocrAmountStatus"
        field :ocr_amount_confidence, -> { String }, optional: true, nullable: false, api_name: "ocrAmountConfidence"
        field :amount_discrepancy_detected, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "amountDiscrepancyDetected"
        field :endorsement_detected, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "endorsementDetected"
        field :errors, -> { Internal::Types::Array[String] }, optional: true, nullable: false
        field :messages, -> { Internal::Types::Array[String] }, optional: true, nullable: false
        field :car_lar_match_confidence, -> { String }, optional: true, nullable: false, api_name: "carLarMatchConfidence"
        field :car_lar_match_status, -> { String }, optional: true, nullable: false, api_name: "carLarMatchStatus"
        field :front_image, -> { String }, optional: true, nullable: false, api_name: "frontImage"
        field :rear_image, -> { String }, optional: true, nullable: false, api_name: "rearImage"
        field :check_type, -> { Integer }, optional: false, nullable: false, api_name: "checkType"
        field :reference_number, -> { String }, optional: true, nullable: false, api_name: "referenceNumber"
        field :page_identifier, -> { String }, optional: true, nullable: false, api_name: "pageIdentifier"
      end
    end
  end
end
