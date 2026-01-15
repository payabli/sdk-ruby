# frozen_string_literal: true

module PayabliSdk
  module Types
    module BillDataPaymentTerms
      extend PayabliSdk::Internal::Types::Enum

      PIA = "PIA"
      CIA = "CIA"
      UR = "UR"
      NET_10 = "NET10"
      NET_20 = "NET20"
      NET_30 = "NET30"
      NET_45 = "NET45"
      NET_60 = "NET60"
      NET_90 = "NET90"
      EOM = "EOM"
      MFI = "MFI"
      FIVE_MFI = "5MFI"
      TEN_MFI = "10MFI"
      FIFTEEN_MFI = "15MFI"
      TWENTY_MFI = "20MFI"
      TWO_10_NET_30 = "2/10NET30"
      UF = "UF"
      TEN_UF = "10UF"
      TWENTY_UF = "20UF"
      TWENTY_FIVE_UF = "25UF"
      FIFTY_UF = "50UF"
    end
  end
end
