# frozen_string_literal: true

module Types
  module Objects
    class MutationType < Types::Objects::Base
      field :update_post, mutation: ::Mutations::UpdatePost
      field :create_post, mutation: ::Mutations::CreatePost
    end
  end
end
