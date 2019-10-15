# frozen_string_literal: true

require 'faraday'
require 'faraday_middleware'
require 'exchangerate_api/result'
require 'exchangerate_api/currency_codes'

module ExchangerateApi
  ##
  # # Client
  #
  # Client to fetch currency exchange rate data.
  #
  # @example
  #   require "exchagerate_api"
  #
  #   client = ExchangerateApi::Client.new
  #
  #   client.rates_for('USD')
  #
  #   client.rates_for('EUR')
  #
  class Client
    # Address of the exchagerate api service.
    SERVICE_ADDRESS = 'https://api.exchangerate-api.com'

    # @return [String] Exchangerate api version.
    attr_reader :version

    # Creates a new Client instance.
    #
    # @param version [String] Version of the api. Default value is `v4`
    def initialize(version: 'v4')
      @version = version
      @connection = Faraday.new(url: SERVICE_ADDRESS) do |conn|
        conn.response :json
        conn.adapter Faraday.default_adapter
      end
    end

    # Fetch exchage rate data by currency code
    #
    # @param currency_code [String] ISO format currency code.
    #   Supported currency codes are.
    # @raise [ExchangerateApi::Error] if invalid currency code or
    #   other api errors.
    # @return [ExchangerateApi::Result] Exchange rate data.
    #
    def rates_for(currency_code)
      resp = @connection.get("/#{version}/latest/#{currency_code}")

      return Result.new(resp.body) if resp.status == 200

      raise ExchangerateApi::Error.new(status: resp.status, message: resp.body)
    end

    # List all supported currency codes with countries
    #
    # @return [Hash] List of currency codes {CurrencyCodes::CODES}
    def currency_codes
      CurrencyCodes::CODES
    end

    # Get exchage rate for usd
    #
    # @return [ExchangerateApi::Result] Exchange rate data.
    def rates_for_usd
      rates_for 'USD'
    end
  end
end
