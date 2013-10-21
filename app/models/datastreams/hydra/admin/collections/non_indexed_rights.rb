module Hydra::Admin::Collections
  class NonIndexedRights < Hydra::Datastream::RightsMetadata    
    def to_solr(solr_doc=Hash.new)
      return solr_doc
    end
  end
end
