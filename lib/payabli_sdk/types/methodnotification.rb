# frozen_string_literal: true

module PayabliSdk
  module Types
    module Methodnotification
      extend PayabliSdk::Internal::Types::Enum

      EMAIL = "email"
      SMS = "sms"
      WEB = "web"
      REPORT_EMAIL = "report-email"
      REPORT_WEB = "report-web"
    end
  end
end
