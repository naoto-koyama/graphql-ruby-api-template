# frozen_string_literal: true

module Types
  module Unions
    class Base < GraphQL::Schema::Union
      edge_type_class(Types::Edges::Base)
      connection_type_class(Types::Connections::Base)
    end
  end
end
