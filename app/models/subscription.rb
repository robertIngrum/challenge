# frozen_string_literal: true

class Subscription < ApplicationRecord
  has_many :users,      dependent: :restrict_with_error
  has_many :challenges, dependent: :restrict_with_error
end
