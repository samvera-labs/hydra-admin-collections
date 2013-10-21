module Hydra::Admin::Collections
  module ActiveFedoraExt
    # Assert that this model is a member of an admin collection
    # @param [Hash] args
    # @option args [Symbol] :name (:collection) the name of the association
    # @option args [String] :class_name ('Hydra::Admin::Collection') the class of the collection itself 
    # @option args [Symbol] :property (:is_member_of_collection) the symbol that points at the RDF predicate to use 
    def belongs_to_admin_collection(args={})
      belongs_to args.fetch(:name, :collection), class_name: args.fetch(:class_name, 'Hydra::Admin::Collection'), property: args.fetch(:property, :is_member_of_collection)
    end
  end
end
