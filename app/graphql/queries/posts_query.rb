# frozen_string_literal: true

module Queries
  class PostsQuery < Queries::BaseQuery
    type [Types::Objects::PostType], null: false

    def resolve
      Post.limit(50).order(id: :asc)
    end
  end
end
