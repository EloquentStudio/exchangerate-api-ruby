# frozen_string_literal: true

require 'test_helper'

describe ExchangerateApi::Client do
  before do
    @client = ExchangerateApi::Client.new
  end

  it 'create instance of client with default values' do
    client = ExchangerateApi::Client.new
    expect(client.version).must_equal 'v4'
  end

  it 'returns list of supported currency codes' do
    expect(@client.currency_codes).must_be_instance_of Hash
    expect(@client.currency_codes.length > 0).must_equal true
  end

  it 'returns list of supported currency codes' do
    expect(@client.currency_codes).must_be_instance_of Hash
    expect(@client.currency_codes.length > 0).must_equal true
  end

  it 'fetch exchange rates data' do
    rates = @client.rates_for('EUR')

    expect(rates.date).must_be_instance_of Time
    expect(rates.updated_at).must_be_instance_of Time
    expect(rates.currency_code).must_equal 'EUR'
    expect(rates.length > 0).must_equal true

    expect(rates['EUR']).must_equal 1
    expect(rates['USD'] > 0).must_equal true
  end

  it 'fetch exchange rates data for usd' do
    rates = @client.rates_for_usd

    expect(rates.date).must_be_instance_of Time
    expect(rates.updated_at).must_be_instance_of Time
    expect(rates.currency_code).must_equal 'USD'
    expect(rates.length > 0).must_equal true

    expect(rates['USD']).must_equal 1
    expect(rates['EUR'] > 0).must_equal true
  end

  it 'raise error for invalid currency code' do
    expect(proc {
       @client.rates_for('INVALID')
    }).must_raise ExchangerateApi::Error
  end
end
