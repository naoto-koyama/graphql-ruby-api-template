# frozen_string_literal: true

module Types
  module Base
    module NodeType
      include Types::Base::Interface
      # Add the `id` field
      include GraphQL::Types::Relay::NodeBehaviors
    end
  end
end
