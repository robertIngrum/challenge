# frozen_string_literal: true

class Subscription < ApplicationRecord
  has_many :users
  has_many :challenges
end
