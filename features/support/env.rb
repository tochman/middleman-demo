require 'capybara'
require 'rspec'
require 'middleman-core'
require 'middleman-core/rack'

middleman_app = ::Middleman::Application.new

Capybara.app = ::Middleman::Rack.new(middleman_app).to_app do
  set :root, File.expand_path(File.join(File.dirname(__FILE__), '..'))
  set :environment, :development
  set :show_exceptions, false
end

class AppWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  AppWorld.new
end
