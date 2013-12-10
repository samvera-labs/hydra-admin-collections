module Hydra::Admin::Collections::Metadata
  extend ActiveSupport::Concern
  included do
    has_metadata 'descMetadata', type: ActiveFedora::SimpleDatastream do |sds|
      sds.field :name, :string
      sds.field :description, :string
      sds.field :publisher, :string
      sds.field :type, :string
      sds.field :language, :string
      sds.field :coverage, :string
      sds.field :creators, :string
    end

    has_attributes :description, :name, :publisher, :type, :language, :coverage, datastream: :descMetadata, multiple: false
    has_attributes :creators, datastream: :descMetadata, multiple: true
  end
end

