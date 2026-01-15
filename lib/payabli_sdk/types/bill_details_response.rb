# frozen_string_literal: true

module PayabliSdk
  module Types
    # Response object for bill details. Contains basic information about a bill.
    class BillDetailsResponse < Internal::Types::Model
      field :bill_id, -> { Integer }, optional: true, nullable: false, api_name: "billId"
      field :lot_number, -> { String }, optional: true, nullable: false, api_name: "lotNumber"
      field :invoice_number, -> { String }, optional: true, nullable: false, api_name: "invoiceNumber"
      field :net_amount, -> { String }, optional: true, nullable: false, api_name: "netAmount"
      field :discount, -> { String }, optional: true, nullable: false
      field :due_date, -> { String }, optional: true, nullable: false, api_name: "dueDate"
      field :invoice_date, -> { String }, optional: true, nullable: false, api_name: "invoiceDate"
      field :comments, -> { String }, optional: true, nullable: false
    end
  end
end
