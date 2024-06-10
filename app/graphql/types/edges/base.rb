# frozen_string_literal: true

module Types
  module Edges
    class Base < Types::Objects::Base
      # add `node` and `cursor` fields, as well as `node_type(...)` override
      include GraphQL::Types::Relay::EdgeBehaviors
    end
  end
end
