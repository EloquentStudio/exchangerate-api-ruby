# frozen_string_literal: true

require 'exchangerate/version'
require 'exchangerate/client'

# # Exchangerate
#
module Exchangerate
  # Exchangerate api standered error.
  class Error < StandardError; end

  # Create instance of API client.
  #
  # @return [Exchangerate::API]
  #
  # @example
  #   require "exchagerate"
  #
  #   client = Exchangerate.new
  #
  #   result = client.rates_for('USD')
  #   result.currency_code # "USD"
  #   result.date # 2018-12-31 18:30:00 UTC
  #   result.updated_at # 2019-10-15 02:01:16 UTC
  #   result['EUR'] # 1.1
  #
  #   result = client.rates_for('EUR')
  #   result.each do |currency_code, exchange_rate|
  #     p "#{currency_code} - #{exchange_rate}"
  #   end
  #
  #   client.currency_codes # ['USD', 'EUR', ....]
  #
  def self.new
    Client.new
  end
end
