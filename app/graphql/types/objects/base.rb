# frozen_string_literal: true

module Types
  module Objects
    class Base < GraphQL::Schema::Object
      edge_type_class(Types::Edges::Base)
      connection_type_class(Types::Connections::Base)
      field_class Types::Fields::Base
    end
  end
end
