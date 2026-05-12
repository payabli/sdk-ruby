# frozen_string_literal: true

module Payabli
  module Types
    class BillQueryResponseSummary < Internal::Types::Model
      field :pageidentifier, -> { String }, optional: true, nullable: false
      field :page_size, -> { Integer }, optional: true, nullable: false, api_name: "pageSize"
      field :total_2_approval, -> { Integer }, optional: true, nullable: false, api_name: "total2approval"
      field :totalactive, -> { Integer }, optional: true, nullable: false
      field :total_amount, -> { Integer }, optional: true, nullable: false, api_name: "totalAmount"
      field :totalamount_2_approval, -> { Integer }, optional: true, nullable: false, api_name: "totalamount2approval"
      field :totalamountactive, -> { Integer }, optional: true, nullable: false
      field :totalamountapproved, -> { Integer }, optional: true, nullable: false
      field :totalamountcancel, -> { Integer }, optional: true, nullable: false
      field :totalamountdisapproved, -> { Integer }, optional: true, nullable: false
      field :totalamountintransit, -> { Integer }, optional: true, nullable: false
      field :totalamountoverdue, -> { Integer }, optional: true, nullable: false
      field :totalamountpaid, -> { Integer }, optional: true, nullable: false
      field :totalamountsent_2_approval, -> { Integer }, optional: true, nullable: false, api_name: "totalamountsent2approval"
      field :totalapproved, -> { Integer }, optional: true, nullable: false
      field :totalcancel, -> { Integer }, optional: true, nullable: false
      field :totaldisapproved, -> { Integer }, optional: true, nullable: false
      field :totalintransit, -> { Integer }, optional: true, nullable: false
      field :totaloverdue, -> { Integer }, optional: true, nullable: false
      field :total_pages, -> { Integer }, optional: true, nullable: false, api_name: "totalPages"
      field :totalpaid, -> { Integer }, optional: true, nullable: false
      field :total_records, -> { Integer }, optional: true, nullable: false, api_name: "totalRecords"
      field :totalsent_2_approval, -> { Integer }, optional: true, nullable: false, api_name: "totalsent2approval"
    end
  end
end
