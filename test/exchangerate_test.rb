# frozen_string_literal: true

require 'test_helper'

describe Exchangerate do
  it 'check version number' do
    refute_nil Exchangerate::VERSION
  end

  it 'create api client' do
    client = Exchangerate.new
    expect(client).must_be_instance_of Exchangerate::Client
  end
end
