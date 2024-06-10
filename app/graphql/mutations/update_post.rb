# frozen_string_literal: true

module Mutations
  class UpdatePost < Mutations::BaseMutation
    argument :params, Types::InputObjects::UpdatePostType, required: true

    type Types::Objects::PostType, null: false

    def resolve(params:)
      post_params = params.to_h
      post = Post.find(post_params.delete(:id))
      post.update!(post_params.compact)
      post
    rescue StandardError => e
      GraphQL::ExecutionError.new(e.message)
    end
  end
end
