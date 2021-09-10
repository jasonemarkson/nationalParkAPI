class CreateAttractions < ActiveRecord::Migration[6.1]
  def change
    create_table :attractions do |t|
      t.string :name
      t.integer :park_id

      t.timestamps
    end
  end
end
