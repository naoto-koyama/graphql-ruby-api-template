# frozen_string_literal: true

module Types
  module NodeTypes
    module Base
      include Types::Interfaces::Base
      # Add the `id` field
      include GraphQL::Types::Relay::NodeBehaviors
    end
  end
end
