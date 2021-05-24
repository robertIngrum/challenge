# frozen_string_literal: true
module Types
  class QueryType < Types::BaseObject
    description "The query root of this schema"

    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :user, UserType, null: true do
      description "Find a user by ID"
      argument :id, ID, required: true
    end
    def user(id:)
      User.find(id)
    end

    field :challenge, ChallengeType, null: true do
      description "Find a challenge by ID"
      argument :id, ID, required: true
    end
    def challenge(id:)
      Challenge.find(id)
    end
  end
end
