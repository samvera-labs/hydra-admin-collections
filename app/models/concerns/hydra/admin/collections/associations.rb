module Hydra::Admin::Collections::Associations
  extend ActiveSupport::Concern
  included do
    # TODO is there a way to make this property configurable?
    has_many :members, class_name: 'ActiveFedora::Base', property: :is_member_of_collection
  end
end
