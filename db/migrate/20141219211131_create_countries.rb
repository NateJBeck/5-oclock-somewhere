class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name, null: false
      t.integer :zone_rank, null: false

      t.timestamps
    end
    add_index :countries, :zone_rank
  end
end
