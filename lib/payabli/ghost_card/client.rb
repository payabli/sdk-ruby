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
      # Only one active ghost card can exist per vendor per paypoint. If the vendor already has one, the request fails
      # with error `7067`. To issue a new card to the same vendor, cancel the existing card first. Canceled and expired
      # cards don't count toward this limit. See [Cancel ghost card](/developers/api-reference/cards/cancel-ghost-card).
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
      # @example
      #   client.ghost_card.create_ghost_card(
      #     entry: "8cfec329267",
      #     vendor_id: 456,
      #     expense_limit: 500,
      #     amount: 500,
      #     max_number_of_uses: 3,
      #     exact_amount: false,
      #     expense_limit_period: "monthly",
      #     billing_cycle: "monthly",
      #     billing_cycle_day: "1",
      #     daily_transaction_count: 5,
      #     daily_amount_limit: 200,
      #     transaction_amount_limit: 100,
      #     mcc: "5411",
      #     tcc: "R",
      #     misc_1: "PO-98765",
      #     misc_2: "Dept-Finance"
      #   )
      #
      # @return [Payabli::Types::CreateGhostCardResponse]
      def create_ghost_card(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::GhostCard::Types::CreateGhostCardRequestBody.new(params).to_h
        non_body_param_names = %w[entry]
        body = request_data.except(*non_body_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "MoneyOutCard/GhostCard/#{URI.encode_uri_component(params[:entry].to_s)}",
          headers: headers,
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

      # Cancels a ghost card. This is always a soft delete: Payabli keeps the card record, including its transaction
      # history.
      #
      # Canceling a ghost card frees the vendor's slot, so you can issue a new ghost card to the same vendor. A card
      # canceled with this endpoint can't be used, reactivated, or canceled again.
      #
      # Requires the `vcard_delete` permission.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :card_token
      #
      # @example
      #   client.ghost_card.delete_ghost_card(card_token: "gc_abc123def456")
      #
      # @return [Payabli::Types::DeleteGhostCardResponse]
      def delete_ghost_card(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "MoneyOutCard/GhostCard/#{URI.encode_uri_component(params[:card_token].to_s)}",
          headers: headers,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::DeleteGhostCardResponse.load(response.body)
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
      # @example
      #   client.ghost_card.update_card(
      #     entry: "8cfec329267",
      #     card_token: "gc_abc123def456",
      #     status: "Cancelled"
      #   )
      #
      # @return [Payabli::Types::PayabliApiResponse]
      def update_card(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::GhostCard::Types::UpdateCardRequestBody.new(params).to_h
        non_body_param_names = %w[entry]
        body = request_data.except(*non_body_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "MoneyOutCard/card/#{URI.encode_uri_component(params[:entry].to_s)}",
          headers: headers,
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
