# frozen_string_literal: true

module PayabliSdk
  module Types
    module PayoutCreditLimit
      # PayoutCreditLimit is an alias for Float

      # @option str [String]
      #
      # @return [untyped]
      def self.load(str)
        ::JSON.parse(str)
      end

      # @option value [untyped]
      #
      # @return [String]
      def self.dump(value)
        ::JSON.generate(value)
      end
    end
  end
end
