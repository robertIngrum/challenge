# frozen_string_literal: true

class CreateUser < ActiveRecord::Migration[6.1]
  def change
    create_table(:users) do |t|
      t.string(:username)

      t.timestamps
    end

    add_index(:users, :username, unique: true)
  end
end
