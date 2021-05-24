# frozen_string_literal: true

class User < ApplicationRecord
  has_many :subscriptions, dependent: :restrict_with_error
  has_many :challenges, through: :subscriptions
end
