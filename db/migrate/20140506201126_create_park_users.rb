class CreateParkUsers < ActiveRecord::Migration
  def change
    create_table :park_users do |t|
      t.references :user, index: true
      t.references :park, index: true
    end
  end
end
