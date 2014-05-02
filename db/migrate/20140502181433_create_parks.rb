class CreateParks < ActiveRecord::Migration
  def change
    create_table :parks do |t|
      t.string :name
      t.string :peak
      t.string :state
      t.string :elevation
      t.string :minelevation

      t.timestamps
    end
  end
end
