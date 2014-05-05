class ParksUsers < ActiveRecord::Migration
  def change
    create_table :parks_users, :id => false do |t|
      t.references :user, :park
    end

    add_index :parks_users, [:park_id, :user_id]
  end
end
