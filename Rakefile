require "bundler/gem_tasks"

# Path to the test app
# TEST_APP = 'spec/internal'
# Path to files to include in the test app
# TEST_APP_TEMPLATES = 'spec/test_app_templates'
#
require 'engine_cart/rake_task'

APP_ROOT = '.'
require 'jettywrapper'
JETTY_ZIP_BASENAME = 'fedora-4/master'
Jettywrapper.url = "https://github.com/projecthydra/hydra-jetty/archive/#{JETTY_ZIP_BASENAME}.zip"

require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task :default => :spec


task :ci => ['engine_cart:generate'] do
  # run the tests
end
