module Hydra::Admin::CollectionBehavior
  extend ActiveSupport::Concern
  include Hydra::Admin::Collections::Associations
  include Hydra::Admin::Collections::Metadata
  include Hydra::Admin::Collections::Rights
end
