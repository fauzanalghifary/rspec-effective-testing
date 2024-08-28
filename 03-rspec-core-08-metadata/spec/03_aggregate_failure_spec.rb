# validate me
require 'rspec'

RSpec.configure do |config|
  config.define_derived_metadata do |meta|
    # Sets the flag unconditionally;
    # doesn't allow examples to opt out
    # meta[:aggregate_failures] = true

    meta[:aggregate_failures] = true unless meta.key?(:aggregate_failures)
  end
end

RSpec.describe ':aggregate_failures' do
  it 'has :aggregate_failures by default' do |example|
    expect(example.metadata).to include(aggregate_failures: true)
  end

  it 'can disable :aggregate_failures', aggregate_failures: false do |example|
    expect(example.metadata).to include(aggregate_failures: false)
  end
end

