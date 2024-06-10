# frozen_string_literal: true

module Types
  module InputObjects
    class UpdatePostType < Types::InputObjects::Base
      argument :id, ID, required: true
      argument :title, String, required: false
      argument :body, String, required: false
    end
  end
end
