# frozen_string_literal: true

module Payabli
  module PaymentLink
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Generates a payment link for an invoice from the invoice ID.
      #
      # The payment page configuration blocks (`logo`, `page`, `paymentMethods`, `review`, `messageBeforePaying`,
      # `paymentButton`, `notes`, `contactUs`, and `settings`) are optional. When you omit a block, Payabli applies a
      # default rather than hiding it. The block is enabled at a fixed display order, so the generated page stays
      # complete and branded. To hide a section, send the block explicitly with `enabled` set to `false`. An explicit
      # value is always honored and is never replaced by a default. For each block's default, see its description in the
      # request body.
      #
      # @param request_options [Hash]
      # @param params [Payabli::PaymentLink::Types::PayLinkDataInvoice]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :id_invoice
      # @option params [Boolean, nil] :amount_fixed
      # @option params [String, nil] :mail_2
      # @option params [String, nil] :idempotency_key
      #
      # @example
      #   client.payment_link.add_pay_link_from_invoice(
      #     id_invoice: 23548884,
      #     mail_2: "jo@example.com; ceo@example.com",
      #     contact_us: {
      #       email_label: "Email",
      #       enabled: true,
      #       header: "Contact Us",
      #       order: 0,
      #       payment_icons: true,
      #       phone_label: "Phone"
      #     },
      #     invoices: {
      #       enabled: true,
      #       invoice_link: {
      #         enabled: true,
      #         label: "View Invoice",
      #         order: 0
      #       },
      #       order: 0,
      #       view_invoice_details: {
      #         enabled: true,
      #         label: "Invoice Details",
      #         order: 0
      #       }
      #     },
      #     logo: {
      #       enabled: true,
      #       order: 0
      #     },
      #     message_before_paying: {
      #       enabled: true,
      #       label: "Please review your payment details",
      #       order: 0
      #     },
      #     notes: {
      #       enabled: true,
      #       header: "Additional Notes",
      #       order: 0,
      #       placeholder: "Enter any additional notes here",
      #       value: ""
      #     },
      #     page: {
      #       description: "Complete your payment securely",
      #       enabled: true,
      #       header: "Payment Page",
      #       order: 0
      #     },
      #     payment_button: {
      #       enabled: true,
      #       label: "Pay Now",
      #       order: 0
      #     },
      #     payment_methods: {
      #       all_methods_checked: true,
      #       enabled: true,
      #       header: "Payment Methods",
      #       methods: {
      #         amex: true,
      #         apple_pay: true,
      #         discover: true,
      #         e_check: true,
      #         mastercard: true,
      #         visa: true
      #       },
      #       order: 0,
      #       settings: {
      #         apple_pay: {
      #           button_style: "black",
      #           button_type: "pay",
      #           language: "en-US"
      #         }
      #       }
      #     },
      #     payor: {
      #       enabled: true,
      #       fields: [{
      #         display: true,
      #         fixed: true,
      #         identifier: true,
      #         label: "Full Name",
      #         name: "fullName",
      #         order: 0,
      #         required: true,
      #         validation: "alpha",
      #         value: "",
      #         width: 0
      #       }],
      #       header: "Payor Information",
      #       order: 0
      #     },
      #     review: {
      #       enabled: true,
      #       header: "Review Payment",
      #       order: 0
      #     },
      #     settings: {
      #       color: "#000000",
      #       custom_css_url: "https://example.com/custom.css",
      #       language: "en",
      #       page_logo: {
      #         f_content: "PHN2ZyB2aWV3Qm94PSIwIDAgODAwIDEwMDAiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgPCEtLSBCYWNrZ3JvdW5kIC0tPgogIDxyZWN0IHdpZHRoPSI4MDAiIGhlaWdodD0iMTAwMCIgZmlsbD0id2hpdGUiLz4KICAKICA8IS0tIENvbXBhbnkgSGVhZGVyIC0tPgogIDx0ZXh0IHg9IjQwIiB5PSI2MCIgZm9udC1mYW1pbHk9IkFyaWFsIiBmb250LXNpemU9IjI0IiBmb250LXdlaWdodD0iYm9sZCIgZmlsbD0iIzJjM2U1MCI+R3J1enlhIEFkdmVudHVyZSBPdXRmaXR0ZXJzPC90ZXh0PgogIDxsaW5lIHgxPSI0MCIgeTE9IjgwIiB4Mj0iNzYwIiB5Mj0iODAiIHN0cm9rZT0iIzJjM2U1MCIgc3Ryb2tlLXdpZHRoPSIyIi8+CiAgCiAgPCEtLSBDb21wYW55IERldGFpbHMgLS0+CiAgPHRleHQgeD0iNDAiIHk9IjExMCIgZm9udC1mYW1pbHk9IkFyaWFsIiBmb250LXNpemU9IjE0IiBmaWxsPSIjMzQ0OTVlIj4xMjMgTW91bnRhaW4gVmlldyBSb2FkPC90ZXh0PgogIDx0ZXh0IHg9IjQwIiB5PSIxMzAiIGZvbnQtZmFtaWx5PSJBcmlhbCIgZm9udC1zaXplPSIxNCIgZmlsbD0iIzM0NDk1ZSI+VGJpbGlzaSwgR2VvcmdpYSAwMTA1PC90ZXh0PgogIDx0ZXh0IHg9IjQwIiB5PSIxNTAiIGZvbnQtZmFtaWx5PSJBcmlhbCIgZm9udC1zaXplPSIxNCIgZmlsbD0iIzM0NDk1ZSI+VGVsOiArOTk1IDMyIDEyMyA0NTY3PC90ZXh0PgogIDx0ZXh0IHg9IjQwIiB5PSIxNzAiIGZvbnQtZmFtaWx5PSJBcmlhbCIgZm9udC1zaXplPSIxNCIgZmlsbD0iIzM0NDk1ZSI+RW1haWw6IGluZm9AZ3J1enlhYWR2ZW50dXJlcy5jb208L3RleHQ+CgogIDwhLS0gSW52b2ljZSBUaXRsZSAtLT4KICA8dGV4dCB4PSI2MDAiIHk9IjExMCIgZm9udC1mYW1pbHk9IkFyaWFsIiBmb250LXNpemU9IjI0IiBmb250LXdlaWdodD0iYm9sZCIgZmlsbD0iIzJjM2U1MCI+SU5WT0lDRTwvdGV4dD4KICA8dGV4dCB4PSI2MDAiIHk9IjE0MCIgZm9udC1mYW1pbHk9IkFyaWFsIiBmb250LXNpemU9IjE0IiBmaWxsPSIjMzQ0OTVlIj5EYXRlOiAxMi8xMS8yMDI0PC90ZXh0PgogIDx0ZXh0IHg9IjYwMCIgeT0iMTYwIiBmb250LWZhbWlseT0iQXJpYWwiIGZvbnQtc2l6ZT0iMTQiIGZpbGw9IiMzNDQ5NWUiPkludm9pY2UgIzogR1JaLTIwMjQtMTEyMzwvdGV4dD4KCiAgPCEtLSBCaWxsIFRvIFNlY3Rpb24gLS0+CiAgPHRleHQgeD0iNDAiIHk9IjIyMCIgZm9udC1mYW1pbHk9IkFyaWFsIiBmb250LXNpemU9IjE2IiBmb250LXdlaWdodD0iYm9sZCIgZmlsbD0iIzJjM2U1MCI+QklMTCBUTzo8L3RleHQ+CiAgPHJlY3QgeD0iNDAiIHk9IjIzNSIgd2lkdGg9IjMwMCIgaGVpZ2h0PSI4MCIgZmlsbD0iI2Y3ZjlmYSIvPgogIDx0ZXh0IHg9IjUwIiB5PSIyNjAiIGZvbnQtZmFtaWx5PSJBcmlhbCIgZm9udC1zaXplPSIxNCIgZmlsbD0iIzM0NDk1ZSI+W0N1c3RvbWVyIE5hbWVdPC90ZXh0PgogIDx0ZXh0IHg9IjUwIiB5PSIyODAiIGZvbnQtZmFtaWx5PSJBcmlhbCIgZm9udC1zaXplPSIxNCIgZmlsbD0iIzM0NDk1ZSI+W0FkZHJlc3MgTGluZSAxXTwvdGV4dD4KICA8dGV4dCB4PSI1MCIgeT0iMzAwIiBmb250LWZhbWlseT0iQXJpYWwiIGZvbnQtc2l6ZT0iMTQiIGZpbGw9IiMzNDQ5NWUiPltDaXR5LCBDb3VudHJ5XTwvdGV4dD4KCiAgPCEtLSBUYWJsZSBIZWFkZXJzIC0tPgogIDxyZWN0IHg9IjQwIiB5PSIzNDAiIHdpZHRoPSI3MjAiIGhlaWdodD0iMzAiIGZpbGw9IiMyYzNlNTAiLz4KICA8dGV4dCB4PSI1MCIgeT0iMzYwIiBmb250LWZhbWlseT0iQXJpYWwiIGZvbnQtc2l6ZT0iMTQiIGZvbnQtd2VpZ2h0PSJib2xkIiBmaWxsPSJ3aGl0ZSI+RGVzY3JpcHRpb248L3RleHQ+CiAgPHRleHQgeD0iNDUwIiB5PSIzNjAiIGZvbnQtZmFtaWx5PSJBcmlhbCIgZm9udC1zaXplPSIxNCIgZm9udC13ZWlnaHQ9ImJvbGQiIGZpbGw9IndoaXRlIj5RdWFudGl0eTwvdGV4dD4KICA8dGV4dCB4PSI1NTAiIHk9IjM2MCIgZm9udC1mYW1pbHk9IkFyaWFsIiBmb250LXNpemU9IjE0IiBmb250LXdlaWdodD0iYm9sZCIgZmlsbD0id2hpdGUiPlJhdGU8L3RleHQ+CiAgPHRleHQgeD0iNjgwIiB5PSIzNjAiIGZvbnQtZmFtaWx5PSJBcmlhbCIgZm9udC1zaXplPSIxNCIgZm9udC13ZWlnaHQ9ImJvbGQiIGZpbGw9IndoaXRlIj5BbW91bnQ8L3RleHQ+CgogIDwhLS0gVGFibGUgUm93cyAtLT4KICA8cmVjdCB4PSI0MCIgeT0iMzcwIiB3aWR0aD0iNzIwIiBoZWlnaHQ9IjMwIiBmaWxsPSIjZjdmOWZhIi8+CiAgPHRleHQgeD0iNTAiIHk9IjM5MCIgZm9udC1mYW1pbHk9IkFyaWFsIiBmb250LXNpemU9IjE0IiBmaWxsPSIjMzQ0OTVlIj5Nb3VudGFpbiBDbGltYmluZyBFcXVpcG1lbnQgUmVudGFsPC90ZXh0PgogIDx0ZXh0IHg9IjQ1MCIgeT0iMzkwIiBmb250LWZhbWlseT0iQXJpYWwiIGZvbnQtc2l6ZT0iMTQiIGZpbGw9IiMzNDQ5NWUiPjE8L3RleHQ+CiAgPHRleHQgeD0iNTUwIiB5PSIzOTAiIGZvbnQtZmFtaWx5PSJBcmlhbCIgZm9udC1zaXplPSIxNCIgZmlsbD0iIzM0NDk1ZSI+JDI1MC4wMDwvdGV4dD4KICA8dGV4dCB4PSI2ODAiIHk9IjM5MCIgZm9udC1mYW1pbHk9IkFyaWFsIiBmb250LXNpemU9IjE0IiBmaWxsPSIjMzQ0OTVlIj4kMjUwLjAwPC90ZXh0PgoKICA8cmVjdCB4PSI0MCIgeT0iNDAwIiB3aWR0aD0iNzIwIiBoZWlnaHQ9IjMwIiBmaWxsPSJ3aGl0ZSIvPgogIDx0ZXh0IHg9IjUwIiB5PSI0MjAiIGZvbnQtZmFtaWx5PSJBcmlhbCIgZm9udC1zaXplPSIxNCIgZmlsbD0iIzM0NDk1ZSI+R3VpZGVkIFRyZWsgUGFja2FnZSAtIDIgRGF5czwvdGV4dD4KICA8dGV4dCB4PSI0NTAiIHk9IjQyMCIgZm9udC1mYW1pbHk9IkFyaWFsIiBmb250LXNpemU9IjE0IiBmaWxsPSIjMzQ0OTVlIj4xPC90ZXh0PgogIDx0ZXh0IHg9IjU1MCIgeT0iNDIwIiBmb250LWZhbWlseT0iQXJpYWwiIGZvbnQtc2l6ZT0iMTQiIGZpbGw9IiMzNDQ5NWUiPiQ0MDAuMDA8L3RleHQ+CiAgPHRleHQgeD0iNjgwIiB5PSI0MjAiIGZvbnQtZmFtaWx5PSJBcmlhbCIgZm9udC1zaXplPSIxNCIgZmlsbD0iIzM0NDk1ZSI+JDQwMC4wMDwvdGV4dD4KCiAgPHJlY3QgeD0iNDAiIHk9IjQzMCIgd2lkdGg9IjcyMCIgaGVpZ2h0PSIzMCIgZmlsbD0iI2Y3ZjlmYSIvPgogIDx0ZXh0IHg9IjUwIiB5PSI0NTAiIGZvbnQtZmFtaWx5PSJBcmlhbCIgZm9udC1zaXplPSIxNCIgZmlsbD0iIzM0NDk1ZSI+U2FmZXR5IEVxdWlwbWVudCBQYWNrYWdlPC90ZXh0PgogIDx0ZXh0IHg9IjQ1MCIgeT0iNDUwIiBmb250LWZhbWlseT0iQXJpYWwiIGZvbnQtc2l6ZT0iMTQiIGZpbGw9IiMzNDQ5NWUiPjE8L3RleHQ+CiAgPHRleHQgeD0iNTUwIiB5PSI0NTAiIGZvbnQtZmFtaWx5PSJBcmlhbCIgZm9udC1zaXplPSIxNCIgZmlsbD0iIzM0NDk1ZSI+JDE1MC4wMDwvdGV4dD4KICA8dGV4dCB4PSI2ODAiIHk9IjQ1MCIgZm9udC1mYW1pbHk9IkFyaWFsIiBmb250LXNpemU9IjE0IiBmaWxsPSIjMzQ0OTVlIj4kMTUwLjAwPC90ZXh0PgoKICA8IS0tIFRvdGFscyAtLT4KICA8bGluZSB4MT0iNDAiIHkxPSI0ODAiIHgyPSI3NjAiIHkyPSI0ODAiIHN0cm9rZT0iIzJjM2U1MCIgc3Ryb2tlLXdpZHRoPSIxIi8+CiAgPHRleHQgeD0iNTUwIiB5PSI1MTAiIGZvbnQtZmFtaWx5PSJBcmlhbCIgZm9udC1zaXplPSIxNCIgZm9udC13ZWlnaHQ9ImJvbGQiIGZpbGw9IiMzNDQ5NWUiPlN1YnRvdGFsOjwvdGV4dD4KICA8dGV4dCB4PSI2ODAiIHk9IjUxMCIgZm9udC1mYW1pbHk9IkFyaWFsIiBmb250LXNpemU9IjE0IiBmaWxsPSIjMzQ0OTVlIj4kODAwLjAwPC90ZXh0PgogIDx0ZXh0IHg9IjU1MCIgeT0iNTM1IiBmb250LWZhbWlseT0iQXJpYWwiIGZvbnQtc2l6ZT0iMTQiIGZvbnQtd2VpZ2h0PSJib2xkIiBmaWxsPSIjMzQ0OTVlIj5UYXggKDE4JSk6PC90ZXh0PgogIDx0ZXh0IHg9IjY4MCIgeT0iNTM1IiBmb250LWZhbWlseT0iQXJpYWwiIGZvbnQtc2l6ZT0iMTQiIGZpbGw9IiMzNDQ5NWUiPiQxNDQuMDA8L3RleHQ+CiAgPHRleHQgeD0iNTUwIiB5PSI1NzAiIGZvbnQtZmFtaWx5PSJBcmlhbCIgZm9udC1zaXplPSIxNiIgZm9udC13ZWlnaHQ9ImJvbGQiIGZpbGw9IiMyYzNlNTAiPlRvdGFsOjwvdGV4dD4KICA8dGV4dCB4PSI2ODAiIHk9IjU3MCIgZm9udC1mYW1pbHk9IkFyaWFsIiBmb250LXNpemU9IjE2IiBmb250LXdlaWdodD0iYm9sZCIgZmlsbD0iIzJjM2U1MCI+JDk0NC4wMDwvdGV4dD4KCiAgPCEtLSBQYXltZW50IFRlcm1zIC0tPgogIDx0ZXh0IHg9IjQwIiB5PSI2NDAiIGZvbnQtZmFtaWx5PSJBcmlhbCIgZm9udC1zaXplPSIxNiIgZm9udC13ZWlnaHQ9ImJvbGQiIGZpbGw9IiMyYzNlNTAiPlBheW1lbnQgVGVybXM8L3RleHQ+CiAgPHRleHQgeD0iNDAiIHk9IjY3MCIgZm9udC1mYW1pbHk9IkFyaWFsIiBmb250LXNpemU9IjE0IiBmaWxsPSIjMzQ0OTVlIj5QYXltZW50IGlzIGR1ZSB3aXRoaW4gMzAgZGF5czwvdGV4dD4KICA8dGV4dCB4PSI0MCIgeT0iNjkwIiBmb250LWZhbWlseT0iQXJpYWwiIGZvbnQtc2l6ZT0iMTQiIGZpbGw9IiMzNDQ5NWUiPlBsZWFzZSBpbmNsdWRlIGludm9pY2UgbnVtYmVyIG9uIHBheW1lbnQ8L3RleHQ+CgogIDwhLS0gQmFuayBEZXRhaWxzIC0tPgogIDx0ZXh0IHg9IjQwIiB5PSI3MzAiIGZvbnQtZmFtaWx5PSJBcmlhbCIgZm9udC1zaXplPSIxNiIgZm9udC13ZWlnaHQ9ImJvbGQiIGZpbGw9IiMyYzNlNTAiPkJhbmsgRGV0YWlsczwvdGV4dD4KICA8dGV4dCB4PSI0MCIgeT0iNzYwIiBmb250LWZhbWlseT0iQXJpYWwiIGZvbnQtc2l6ZT0iMTQiIGZpbGw9IiMzNDQ5NWUiPkJhbms6IEJhbmsgb2YgR2VvcmdpYTwvdGV4dD4KICA8dGV4dCB4PSI0MCIgeT0iNzgwIiBmb250LWZhbWlseT0iQXJpYWwiIGZvbnQtc2l6ZT0iMTQiIGZpbGw9IiMzNDQ5NWUiPklCQU46IEdFMTIzNDU2Nzg5MDEyMzQ1Njc4PC90ZXh0PgogIDx0ZXh0IHg9IjQwIiB5PSI4MDAiIGZvbnQtZmFtaWx5PSJBcmlhbCIgZm9udC1zaXplPSIxNCIgZmlsbD0iIzM0NDk1ZSI+U1dJRlQ6IEJBR0FHRTIyPC90ZXh0PgoKICA8IS0tIEZvb3RlciAtLT4KICA8bGluZSB4MT0iNDAiIHkxPSI5MDAiIHgyPSI3NjAiIHkyPSI5MDAiIHN0cm9rZT0iIzJjM2U1MCIgc3Ryb2tlLXdpZHRoPSIxIi8+CiAgPHRleHQgeD0iNDAiIHk9IjkzMCIgZm9udC1mYW1pbHk9IkFyaWFsIiBmb250LXNpemU9IjEyIiBmaWxsPSIjN2Y4YzhkIj5UaGFuayB5b3UgZm9yIGNob29zaW5nIEdydXp5YSBBZHZlbnR1cmUgT3V0Zml0dGVyczwvdGV4dD4KICA8dGV4dCB4PSI0MCIgeT0iOTUwIiBmb250LWZhbWlseT0iQXJpYWwiIGZvbnQtc2l6ZT0iMTIiIGZpbGw9IiM3ZjhjOGQiPnd3dy5ncnV6eWFhZHZlbnR1cmVzLmNvbTwvdGV4dD4KPC9zdmc+Cg==",
      #         filename: "logo.jpg",
      #         ftype: "jpg",
      #         furl: ""
      #       },
      #       redirect_after_approve: true,
      #       redirect_after_approve_url: "https://example.com/success"
      #     }
      #   )
      #
      # @return [Payabli::Types::PayabliApiResponsePaymentLinks]
      def add_pay_link_from_invoice(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::PaymentLink::Types::PayLinkDataInvoice.new(params).to_h
        non_body_param_names = %w[idInvoice amountFixed mail2 idempotencyKey]
        body = request_data.except(*non_body_param_names)

        query_params = {}
        query_params["amountFixed"] = params[:amount_fixed] if params.key?(:amount_fixed)
        query_params["mail2"] = params[:mail_2] if params.key?(:mail_2)

        headers = {}
        headers["idempotencyKey"] = params[:idempotency_key] if params[:idempotency_key]

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }]).merge(headers)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "PaymentLink/#{URI.encode_uri_component(params[:id_invoice].to_s)}",
          headers: headers,
          query: query_params,
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
          Payabli::Types::PayabliApiResponsePaymentLinks.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Generates a payment link for a bill from the bill ID. The vendor receives a secure page where they can select
      # their preferred payment method (ACH, virtual card, or check) and complete the payment.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Types::PaymentPageRequestBodyOut]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :bill_id
      # @option params [Boolean, nil] :amount_fixed
      # @option params [String, nil] :mail_2
      # @option params [String, nil] :idempotency_key
      #
      # @example
      #   client.payment_link.add_pay_link_from_bill(
      #     bill_id: 54323,
      #     mail_2: "jo@example.com; ceo@example.com",
      #     contact_us: {
      #       email_label: "Email",
      #       enabled: true,
      #       header: "Contact Us",
      #       order: 0,
      #       payment_icons: true,
      #       phone_label: "Phone"
      #     },
      #     logo: {
      #       enabled: true,
      #       order: 0
      #     },
      #     message_before_paying: {
      #       enabled: true,
      #       label: "Please review your payment details",
      #       order: 0
      #     },
      #     notes: {
      #       enabled: true,
      #       header: "Additional Notes",
      #       order: 0,
      #       placeholder: "Enter any additional notes here",
      #       value: ""
      #     },
      #     page: {
      #       description: "Get paid securely",
      #       enabled: true,
      #       header: "Payment Page",
      #       order: 0
      #     },
      #     payment_button: {
      #       enabled: true,
      #       label: "Pay Now",
      #       order: 0
      #     },
      #     payment_methods: {
      #       all_methods_checked: true,
      #       allow_multiple_methods: true,
      #       default_method: "vcard",
      #       enabled: true,
      #       header: "Payment Methods",
      #       methods: {
      #         ach: true,
      #         check: true,
      #         vcard: true
      #       },
      #       order: 0,
      #       show_preview_virtual_card: true
      #     },
      #     review: {
      #       enabled: true,
      #       header: "Review Payment",
      #       order: 0
      #     },
      #     settings: {
      #       color: "#000000",
      #       language: "en"
      #     }
      #   )
      #
      # @return [Payabli::Types::PayabliApiResponsePaymentLinks]
      def add_pay_link_from_bill(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[bill_id]
        body_params = params.except(*path_param_names)

        query_param_names = %i[amount_fixed mail_2]
        query_params = {}
        query_params["amountFixed"] = params[:amount_fixed] if params.key?(:amount_fixed)
        query_params["mail2"] = params[:mail_2] if params.key?(:mail_2)
        params = params.except(*query_param_names)

        headers = {}
        headers["idempotencyKey"] = params[:idempotency_key] if params[:idempotency_key]

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }]).merge(headers)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "PaymentLink/bill/#{URI.encode_uri_component(params[:bill_id].to_s)}",
          headers: headers,
          query: query_params,
          body: Payabli::Types::PaymentPageRequestBodyOut.new(body_params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponsePaymentLinks.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Deletes a payment link by ID.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :pay_link_id
      #
      # @example
      #   client.payment_link.delete_pay_link_from_id(pay_link_id: "2325-XXXXXXX-90b1-4598-b6c7-44cdcbf495d7-1234")
      #
      # @return [Payabli::Types::PayabliApiResponsePaymentLinks]
      def delete_pay_link_from_id(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "PaymentLink/#{URI.encode_uri_component(params[:pay_link_id].to_s)}",
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
          Payabli::Types::PayabliApiResponsePaymentLinks.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a payment link by ID.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :paylink_id
      #
      # @example
      #   client.payment_link.get_pay_link_from_id(paylink_id: "2325-XXXXXXX-90b1-4598-b6c7-44cdcbf495d7-1234")
      #
      # @return [Payabli::Types::GetPayLinkFromIdResponse]
      def get_pay_link_from_id(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "PaymentLink/load/#{URI.encode_uri_component(params[:paylink_id].to_s)}",
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
          Payabli::Types::GetPayLinkFromIdResponse.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Send a payment link to the specified email addresses or phone numbers.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Types::PushPayLinkRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :pay_link_id
      #
      # @example
      #   client.payment_link.push_pay_link_from_id(pay_link_id: "2325-XXXXXXX-90b1-4598-b6c7-44cdcbf495d7-1234")
      #
      # @return [Payabli::Types::PayabliApiResponsePaymentLinks]
      def push_pay_link_from_id(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[pay_link_id]
        body_params = params.except(*path_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "PaymentLink/push/#{URI.encode_uri_component(params[:pay_link_id].to_s)}",
          headers: headers,
          body: Payabli::Types::PushPayLinkRequest.new(body_params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponsePaymentLinks.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Refresh a payment link's content after an update.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :pay_link_id
      # @option params [Boolean, nil] :amount_fixed
      #
      # @example
      #   client.payment_link.refresh_pay_link_from_id(pay_link_id: "2325-XXXXXXX-90b1-4598-b6c7-44cdcbf495d7-1234")
      #
      # @return [Payabli::Types::PayabliApiResponsePaymentLinks]
      def refresh_pay_link_from_id(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["amountFixed"] = params[:amount_fixed] if params.key?(:amount_fixed)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "PaymentLink/refresh/#{URI.encode_uri_component(params[:pay_link_id].to_s)}",
          headers: headers,
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponsePaymentLinks.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Sends a payment link to the specified email addresses.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :pay_link_id
      # @option params [Boolean, nil] :attachfile
      # @option params [String, nil] :mail_2
      #
      # @example
      #   client.payment_link.send_pay_link_from_id(
      #     pay_link_id: "2325-XXXXXXX-90b1-4598-b6c7-44cdcbf495d7-1234",
      #     mail_2: "jo@example.com; ceo@example.com"
      #   )
      #
      # @return [Payabli::Types::PayabliApiResponsePaymentLinks]
      def send_pay_link_from_id(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["attachfile"] = params[:attachfile] if params.key?(:attachfile)
        query_params["mail2"] = params[:mail_2] if params.key?(:mail_2)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "PaymentLink/send/#{URI.encode_uri_component(params[:pay_link_id].to_s)}",
          headers: headers,
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponsePaymentLinks.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Updates a payment link's details.
      #
      # @param request_options [Hash]
      # @param params [Payabli::PaymentLink::Types::PayLinkUpdateData]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :pay_link_id
      #
      # @example
      #   client.payment_link.update_pay_link_from_id(
      #     pay_link_id: "2325-XXXXXXX-90b1-4598-b6c7-44cdcbf495d7-1234",
      #     notes: {
      #       enabled: true,
      #       header: "Additional Notes",
      #       order: 0,
      #       placeholder: "Enter any additional notes here",
      #       value: ""
      #     },
      #     payment_button: {
      #       enabled: true,
      #       label: "Pay Now",
      #       order: 0
      #     }
      #   )
      #
      # @return [Payabli::Types::PayabliApiResponsePaymentLinks]
      def update_pay_link_from_id(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::PaymentLink::Types::PayLinkUpdateData.new(params).to_h
        non_body_param_names = %w[payLinkId]
        body = request_data.except(*non_body_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "PaymentLink/update/#{URI.encode_uri_component(params[:pay_link_id].to_s)}",
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
          Payabli::Types::PayabliApiResponsePaymentLinks.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Generates a vendor payment link for a specific bill lot number. This allows you to pay all bills with the same
      # lot number for a vendor with a single payment link.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Types::PaymentPageRequestBodyOut]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :lot_number
      # @option params [Payabli::Types::Entry] :entry_point
      # @option params [String] :vendor_number
      # @option params [String, nil] :mail_2
      # @option params [String, nil] :amount_fixed
      #
      # @example
      #   client.payment_link.add_pay_link_from_bill_lot_number(
      #     lot_number: "LOT-2024-001",
      #     entry_point: "8cfec329267",
      #     vendor_number: "VEN-123",
      #     mail_2: "customer@example.com; billing@example.com",
      #     amount_fixed: "true",
      #     contact_us: {
      #       email_label: "Email",
      #       enabled: true,
      #       header: "Contact Us",
      #       order: 0,
      #       payment_icons: true,
      #       phone_label: "Phone"
      #     },
      #     logo: {
      #       enabled: true,
      #       order: 0
      #     },
      #     message_before_paying: {
      #       enabled: true,
      #       label: "Please review your payment details",
      #       order: 0
      #     },
      #     notes: {
      #       enabled: true,
      #       header: "Additional Notes",
      #       order: 0,
      #       placeholder: "Enter any additional notes here",
      #       value: ""
      #     },
      #     page: {
      #       description: "Get paid securely",
      #       enabled: true,
      #       header: "Payment Page",
      #       order: 0
      #     },
      #     payment_button: {
      #       enabled: true,
      #       label: "Pay Now",
      #       order: 0
      #     },
      #     payment_methods: {
      #       all_methods_checked: true,
      #       allow_multiple_methods: true,
      #       default_method: "vcard",
      #       enabled: true,
      #       header: "Payment Methods",
      #       methods: {
      #         ach: true,
      #         check: true,
      #         vcard: true
      #       },
      #       order: 0,
      #       show_preview_virtual_card: true
      #     },
      #     review: {
      #       enabled: true,
      #       header: "Review Payment",
      #       order: 0
      #     },
      #     settings: {
      #       color: "#000000",
      #       language: "en"
      #     }
      #   )
      #
      # @return [Payabli::Types::PayabliApiResponsePaymentLinks]
      def add_pay_link_from_bill_lot_number(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[lot_number]
        body_params = params.except(*path_param_names)

        query_param_names = %i[entry_point vendor_number mail_2 amount_fixed]
        query_params = {}
        query_params["entryPoint"] = params[:entry_point] if params.key?(:entry_point)
        query_params["vendorNumber"] = params[:vendor_number] if params.key?(:vendor_number)
        query_params["mail2"] = params[:mail_2] if params.key?(:mail_2)
        query_params["amountFixed"] = params[:amount_fixed] if params.key?(:amount_fixed)
        params = params.except(*query_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "PaymentLink/bill/lotNumber/#{URI.encode_uri_component(params[:lot_number].to_s)}",
          headers: headers,
          query: query_params,
          body: Payabli::Types::PaymentPageRequestBodyOut.new(body_params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponsePaymentLinks.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Partially updates a Pay Out payment link's content, expiration date, and/or status. Use this to modify the
      # payment page configuration, extend or change the expiration, or cancel a link. Updating the expiration date of
      # an expired link reactivates it to Active status.
      #
      # @param request_options [Hash]
      # @param params [Payabli::PaymentLink::Types::PatchOutPaymentLinkRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :paylink_id
      #
      # @example
      #   client.payment_link.patch_out_payment_link(
      #     paylink_id: "2325-XXXXXXX-90b1-4598-b6c7-44cdcbf495d7-1234",
      #     expiration_date: "2026-06-01T00:00:00Z",
      #     status: "Active"
      #   )
      #
      # @return [Payabli::Types::PayabliApiResponsePaymentLinks]
      def patch_out_payment_link(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::PaymentLink::Types::PatchOutPaymentLinkRequest.new(params).to_h
        non_body_param_names = %w[paylinkId]
        body = request_data.except(*non_body_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "PaymentLink/out/#{URI.encode_uri_component(params[:paylink_id].to_s)}",
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
          Payabli::Types::PayabliApiResponsePaymentLinks.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Updates the payment page content for a Pay Out payment link. Use this to change the branding, messaging, payment
      # methods offered, or other page configuration.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Types::PaymentPageRequestBodyOut]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :paylink_id
      #
      # @example
      #   client.payment_link.update_pay_link_out_from_id(
      #     paylink_id: "2325-XXXXXXX-90b1-4598-b6c7-44cdcbf495d7-1234",
      #     contact_us: {
      #       email_label: "Email",
      #       enabled: true,
      #       header: "Contact Us",
      #       order: 0,
      #       payment_icons: true,
      #       phone_label: "Phone"
      #     },
      #     logo: {
      #       enabled: true,
      #       order: 0
      #     },
      #     message_before_paying: {
      #       enabled: true,
      #       label: "Please review your payment details",
      #       order: 0
      #     },
      #     notes: {
      #       enabled: true,
      #       header: "Additional Notes",
      #       order: 0,
      #       placeholder: "Enter any additional notes here",
      #       value: ""
      #     },
      #     page: {
      #       description: "Get paid securely",
      #       enabled: true,
      #       header: "Payment Page",
      #       order: 0
      #     },
      #     payment_button: {
      #       enabled: true,
      #       label: "Pay Now",
      #       order: 0
      #     },
      #     payment_methods: {
      #       all_methods_checked: true,
      #       allow_multiple_methods: true,
      #       default_method: "vcard",
      #       enabled: true,
      #       header: "Payment Methods",
      #       methods: {
      #         ach: true,
      #         check: true,
      #         vcard: true
      #       },
      #       order: 0,
      #       show_preview_virtual_card: true
      #     },
      #     review: {
      #       enabled: true,
      #       header: "Review Payment",
      #       order: 0
      #     },
      #     settings: {
      #       color: "#000000",
      #       language: "en"
      #     }
      #   )
      #
      # @return [Payabli::Types::PayabliApiResponsePaymentLinks]
      def update_pay_link_out_from_id(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[paylink_id]
        body_params = params.except(*path_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "PaymentLink/updateOut/#{URI.encode_uri_component(params[:paylink_id].to_s)}",
          headers: headers,
          body: Payabli::Types::PaymentPageRequestBodyOut.new(body_params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponsePaymentLinks.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
