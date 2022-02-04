class Types::AuthorType < Types::BaseObject
  description "One author"

  # DB Fields
  field :id, ID, null: false
  field :first_name, String, null: true
  field :last_name, String, null: true
  field :yob, Int, null: false
  field :is_alive, Boolean, null: true
  field :created_at, GraphQL::Types::ISO8601DateTime,null: false
  field :updated_at, GraphQL::Types::ISO8601DateTime,null: false

  # Model Fields
  field :full_name, String, null: true

  field :coordinates, Types::CoordinatesType, null: false
  field :publication_years, [Int], null: false

end

class Types::AuthorInputType < GraphQL::Schema::InputObject
  graphql_name "AuthorInputType"
  description "All the attributes needed to create an author"

  argument :first_name, String, required: false
  argument :last_name, String, required: false
  argument :yob, Int, required: false
  argument :is_alive, Boolean, required: false

end
