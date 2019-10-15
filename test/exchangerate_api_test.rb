# frozen_string_literal: true

require 'test_helper'

describe ExchangerateApi do
  it 'check version number' do
    expect(ExchangerateApi::VERSION).wont_be_nil
  end

  it 'create api client' do
    client = ExchangerateApi.new
    expect(client).must_be_instance_of ExchangerateApi::Client
  end
end
