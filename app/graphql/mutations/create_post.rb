# frozen_string_literal: true

module Mutations
  class CreatePost < Mutations::BaseMutation
    argument :params, Types::InputObjects::CreatePostType, required: true

    type Types::Objects::PostType, null: false

    def resolve(params:)
      Post.create!(params.to_h)
    rescue StandardError => e
      GraphQL::ExecutionError.new(e.message)
    end
  end
end
