# frozen_string_literal: true

module Queries
  class PostQuery < Queries::BaseQuery
    type Types::Objects::PostType, null: false
    argument :id, ID, required: true

    def resolve(id:)
      Post.find(id)
    end
  end
end
