module Hydra::Admin::Collections::Metadata
  extend ActiveSupport::Concern
  included do
    has_metadata 'descMetadata', type: ActiveFedora::SimpleDatastream do |sds|
      sds.field :name, :string
      sds.field :description, :string
    end

    delegate_to :descMetadata, [:description, :name], multiple: false
  end
end

