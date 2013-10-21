module Hydra::Admin::Collections::Rights
  extend ActiveSupport::Concern
  include Hydra::AccessControls::Permissions
  included do
    # Default rights get copied onto new members.  This is an access template.
    has_metadata 'defaultRights', type: Hydra::Admin::Collections::NonIndexedRights, autocreate: true
  end
end
