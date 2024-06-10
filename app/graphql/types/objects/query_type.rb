# frozen_string_literal: true

module Types
  module Objects
    class QueryType < Types::Objects::Base
      # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
      include GraphQL::Types::Relay::HasNodeField
      include GraphQL::Types::Relay::HasNodesField

      # Add root-level fields here.
      # They will be entry points for queries on your schema.

      field :posts, resolver: ::Queries::PostsQuery
      field :post, resolver: ::Queries::PostQuery
    end
  end
end
