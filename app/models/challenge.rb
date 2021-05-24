# frozen_string_literal: true

class Challenge < ApplicationRecord
  has_many :subscriptions, dependent: :restrict_with_error
  has_many :users, through: :subscriptions
end
