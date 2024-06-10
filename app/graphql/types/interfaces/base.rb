# frozen_string_literal: true

module Types
  module Interfaces
    module Base
      include GraphQL::Schema::Interface
      edge_type_class(Types::Edges::Base)
      connection_type_class(Types::Connections::Base)

      field_class Types::Fields::Base
    end
  end
end
