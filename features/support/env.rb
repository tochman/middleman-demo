require 'capybara'
require 'rspec'
require 'middleman-core'
require 'middleman-core/rack'
require './spec/spec_helper'

class AppWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  AppWorld.new
end
