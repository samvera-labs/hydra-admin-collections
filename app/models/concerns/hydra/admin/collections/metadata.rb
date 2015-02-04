module Hydra::Admin::Collections::Metadata
  extend ActiveSupport::Concern
  included do
    has_metadata 'descMetadata', type: ActiveFedora::SimpleDatastream do |sds|
      sds.field :name, :string
      sds.field :description, :string
    end
   
    has_attributes :description, :name, datastream: :descMetadata, multiple: false
  end
end

