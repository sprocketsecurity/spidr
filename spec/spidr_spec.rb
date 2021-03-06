require 'spidr'

require 'spec_helper'
require 'settings/proxy_examples'
require 'settings/timeouts_examples'
require 'settings/user_agent_examples'

describe Spidr do
  it "should have a VERSION constant" do
    expect(subject.const_defined?('VERSION')).to eq(true)
  end

  it_should_behave_like "includes Spidr::Settings::Proxy"
  it_should_behave_like "includes Spidr::Settings::Timeouts"
  it_should_behave_like "includes Spidr::Settings::UserAgent"
end
