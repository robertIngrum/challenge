# frozen_string_literal: true

class User < ApplicationRecord
  has_many :subscriptions
  has_many :challenges, through: :subscriptions
end
