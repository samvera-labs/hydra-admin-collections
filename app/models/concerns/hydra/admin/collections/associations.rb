module Hydra::Admin::Collections::Associations
  extend ActiveSupport::Concern
  included do
    # TODO is there a way to make this property configurable?
    has_many :members, class_name: 'ActiveFedora::Base', predicate: ActiveFedora::RDF::Fcrepo::RelsExt.isMemberOfCollection
  end
end
