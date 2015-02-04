module Hydra::Admin::Collections::Metadata
  extend ActiveSupport::Concern
  included do
    property :title, predicate: RDF::DC.title, multiple: false do |index|
      index.as :stored_searchable
    end
    property :description, predicate: RDF::DC.description, multiple: false do |index|
      index.type :text
      index.as :stored_searchable
    end
  end
end

