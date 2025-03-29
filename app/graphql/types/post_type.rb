module Types
  class PostType < Types::BaseObject
    field :id, ID, null: false
    field :title, String
    field :user_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :tags, [TagType], null: false
    # userは単数なので[]で囲まないです。
    field :user, UserType, null: false

    def tags
      object.tags
    end

    def user
      object.user
    end
  end
end
