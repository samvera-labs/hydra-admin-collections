module Hydra
  module Admin
    class Collection < ActiveFedora::Base
      include Hydra::Admin::CollectionBehavior
    end
  end
end
