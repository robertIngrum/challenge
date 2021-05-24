# frozen_string_literal: true

module Types
  class SubscriptionType < Types::BaseObject
    description "A subscription object"

    field :role, Integer, null: true

    field :user, [Types::UserType], null: false,
      description: "This subscription's user."

    field :challenge, [Types::ChallengeType], null: false,
      description: "This subscription's challenge."
  end
end
