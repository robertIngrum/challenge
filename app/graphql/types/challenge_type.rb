# frozen_string_literal: true

module Types
  class ChallengeType < Types::BaseObject
    description "A challenge object"

    field :id,          ID,      null: false
    field :title,       String,  null: false
    field :description, String,  null: false
    field :state,       Integer, null: false
    field :created_at,  String,  null: false
    field :updated_at,  String,  null: true

    field :parent, [Types::ChallengeType], null: true,
      description: "This challenge's parent, or null if there is none."

    field :subscriptions, [Types::SubscriptionType], null: false,
      description: "This challenge's subscriptions."
  end
end
