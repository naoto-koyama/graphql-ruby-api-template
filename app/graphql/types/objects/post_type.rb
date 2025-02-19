# frozen_string_literal: true

module Types
  module Objects
    class PostType < Types::Objects::Base
      description "A blog post"
      field :id,    ID,     null: false
      field :title, String, null: false
      field :body,  String, null: false
    end
  end
end
