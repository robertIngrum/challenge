# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    description "A user object"

    field :id,         ID,     null: false
    field :username,   String, null: false
    field :created_at, String, null: false
    field :updated_at, String, null: true

    field :subscriptions, [Types::SubscriptionType], null: false,
      description: "This user's subscriptions."
  end
end
