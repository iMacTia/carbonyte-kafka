# frozen_string_literal: true

RSpec.describe Carbonyte::Kafka do
  it 'has a version number' do
    expect(Carbonyte::Kafka::VERSION).not_to be nil
  end
end
