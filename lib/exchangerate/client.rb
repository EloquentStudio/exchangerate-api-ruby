# frozen_string_literal: true

require 'faraday'
require 'faraday_middleware'
require 'exchangerate/result'
require 'exchangerate/currency_codes'

module Exchangerate
  ##
  # # Client
  #
  # Client to fetch currency exchange rate data.
  #
  # @example
  #   require "exchagerate"
  #
  #   client = Exchangerate::Client.new
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
    # @raise [Exchangerate::Error] if invalid currency code or other api errors.
    # @return [Exchangerate::Version] Exchange rate data.
    #
    def rates_for(currency_code)
      resp = @connection.get("/#{version}/latest/#{currency_code}")

      return Result.new(resp.body) if resp.status == 200

      raise Exchangerate::Error.new(status: resp.status, message: resp.body)
    end

    # List all supported currency codes with countries
    #
    # @return [Hash] List of currency codes {CurrencyCodes::CODES}
    def currency_codes
      CurrencyCodes::CODES
    end
  end
end
