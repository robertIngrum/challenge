# frozen_string_literal: true

class CreateChallenge < ActiveRecord::Migration[6.1]
  def change
    create_table :challenges do |t|
      t.string(:title)
      t.string(:description)
      t.integer(:state)
      t.bigint(:parent_id, index: true)

      t.timestamps
    end

    create_join_table :users, :challenges, table_name: :subscriptions do |t|
      t.integer(:role)

      t.index(:user_id)
      t.index(:challenge_id)
    end
  end
end
