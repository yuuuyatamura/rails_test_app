module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :honor_name, String, null: false
    field :posts, [PostType], null: false

    def honor_name
      "#{object.name}さん"
    end

    def posts
      object.posts
    end
  end
end
