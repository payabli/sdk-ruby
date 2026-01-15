# frozen_string_literal: true

module PayabliSdk
  module Errors
    class ServerError < ResponseError
    end

    class ServiceUnavailableError < ApiError
    end
  end
end
