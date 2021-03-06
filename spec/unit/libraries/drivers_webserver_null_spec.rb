# frozen_string_literal: true

require 'spec_helper'

describe Drivers::Webserver::Null do
  let(:driver) { described_class.new(dummy_context(node), aws_opsworks_app) }

  it 'receives and exposes app and node' do
    expect(driver.app).to eq aws_opsworks_app
    expect(driver.send(:node)).to eq node
    expect(driver.options).to eq({})
  end

  it 'has the correct driver_type' do
    expect(driver.driver_type).to eq('webserver')
  end

  it 'returns proper out data' do
    expect(driver.out).to eq({})
  end
end
