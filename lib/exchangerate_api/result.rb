# frozen_string_literal: true

require 'forwardable'

module ExchangerateApi
  # # Result
  #
  # Exchange rate response data wrapper.
  #
  class Result
    extend Forwardable

    def_delegators :@rates, :each, :map, :length

    # @return [String] ISO format currency code.
    attr_reader :currency_code

    # @return [Time] Exchange rate updated date.
    attr_reader :date

    # @return [Time] Exchange rate updated timestamp.
    attr_reader :updated_at

    # @return [Hash<String,Float>] Exchange rate data by currency.
    attr_reader :rates

    # @private
    def initialize(data)
      @currency_code = data['base']
      @date = Time.new(data['date']).utc
      @updated_at = Time.at(data['time_last_updated']).utc
      @rates = data['rates']
    end

    # Get exchage rate by currency code.
    #
    # @return [Float,nil] Exchange value
    def [](currency_code)
      @rates[currency_code]
    end

    # List of currency codes
    #
    # @return [Array<String>]
    def currency_codes
      @rates.keys
    end
  end
end
