require "hydra/admin/collections/version"
require 'hydra/head'

module Hydra
  module Admin
    module Collections
      extend ActiveSupport::Autoload

      autoload :ActiveFedoraExt

      class Engine < ::Rails::Engine
        config.autoload_paths += %W(
          #{config.root}/app/models/datastreams
          #{config.root}/app/models/concerns
        )
      end
    end
  end
end

ActiveFedora::Base.extend Hydra::Admin::Collections::ActiveFedoraExt

