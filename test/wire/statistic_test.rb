# frozen_string_literal: true

require_relative "wiremock_test_case"

class StatisticWireTest < WireMockTestCase
  def setup
    super

    @client = Payabli::Client.new(
      client_id: "test-client-id",
      client_secret: "test-client-secret",
      api_key: "test-api-key",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_statistic_basic_stats_with_wiremock
    test_id = "statistic.basic_stats.0"

    @client.statistic.basic_stats(
      mode: "custom",
      freq: "m",
      level: 2,
      entry_id: 1000000,
      end_date: "2025-11-30",
      start_date: "2025-11-01",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "statistic.basic_stats.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Statistic/basic/custom/m/2/1000000",
      query_params: nil,
      expected: 1
    )
  end

  def test_statistic_customer_basic_stats_with_wiremock
    test_id = "statistic.customer_basic_stats.0"

    @client.statistic.customer_basic_stats(
      mode: "ytd",
      freq: "m",
      customer_id: 4440,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "statistic.customer_basic_stats.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Statistic/customerbasic/ytd/m/4440",
      query_params: nil,
      expected: 1
    )
  end

  def test_statistic_sub_stats_with_wiremock
    test_id = "statistic.sub_stats.0"

    @client.statistic.sub_stats(
      interval: "30",
      level: 2,
      entry_id: 1000000,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "statistic.sub_stats.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Statistic/subscriptions/30/2/1000000",
      query_params: nil,
      expected: 1
    )
  end

  def test_statistic_vendor_basic_stats_with_wiremock
    test_id = "statistic.vendor_basic_stats.0"

    @client.statistic.vendor_basic_stats(
      mode: "ytd",
      freq: "m",
      id_vendor: 1,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "statistic.vendor_basic_stats.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/Statistic/vendorbasic/ytd/m/1",
      query_params: nil,
      expected: 1
    )
  end
end
