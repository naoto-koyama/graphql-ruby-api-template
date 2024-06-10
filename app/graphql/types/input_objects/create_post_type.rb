# frozen_string_literal: true

module Types
  module InputObjects
    class CreatePostType < Types::InputObjects::Base
      argument :title, String, required: true
      argument :body, String, required: true
    end
  end
end
