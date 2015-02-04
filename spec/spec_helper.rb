require "bundler/setup"

require 'hydra/head'
require 'hydra/admin/collections'
require 'engine_cart'
EngineCart.load_application!
# require 'rspec'
RSpec.configure do |config|
  config.color = true
end
