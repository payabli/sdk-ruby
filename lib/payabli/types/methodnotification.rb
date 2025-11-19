# frozen_string_literal: true

module Payabli
  module Types
    module Methodnotification
      extend Payabli::Internal::Types::Enum

      EMAIL = "email"
      SMS = "sms"
      WEB = "web"
      REPORT_EMAIL = "report-email"
      REPORT_WEB = "report-web"
    end
  end
end
