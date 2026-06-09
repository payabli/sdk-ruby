# frozen_string_literal: true

module Payabli
  module GhostCard
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Creates a ghost card, a multi-use virtual debit card issued to a vendor for recurring or discretionary spend.
      #
      # Unlike single-use virtual cards issued as part of a payout transaction, ghost cards aren't tied to a specific
      # payout. They're issued directly to a vendor and can be reused up to a configurable number of times within the
      # card's spending limits.
      #
      # Only one ghost card can exist per vendor per paypoint. To issue a new card to the same vendor, cancel the
      # existing card first.
      #
      # @param request_options [Hash]
      # @param params [Payabli::GhostCard::Types::CreateGhostCardRequestBody]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Payabli::Types::Entry] :entry
      #
      # @return [Payabli::Types::CreateGhostCardResponse]
      def create_ghost_card(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::GhostCard::Types::CreateGhostCardRequestBody.new(params).to_h
        non_body_param_names = %w[entry]
        body = request_data.except(*non_body_param_names)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "MoneyOutCard/GhostCard/#{URI.encode_uri_component(params[:entry].to_s)}",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::CreateGhostCardResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Updates the status of a virtual card (including ghost cards) under a paypoint.
      #
      # @param request_options [Hash]
      # @param params [Payabli::GhostCard::Types::UpdateCardRequestBody]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Payabli::Types::Entry] :entry
      #
      # @return [Payabli::Types::PayabliApiResponse]
      def update_card(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::GhostCard::Types::UpdateCardRequestBody.new(params).to_h
        non_body_param_names = %w[entry]
        body = request_data.except(*non_body_param_names)

        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "MoneyOutCard/card/#{URI.encode_uri_component(params[:entry].to_s)}",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
