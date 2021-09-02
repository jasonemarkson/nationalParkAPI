class CreateSavedParks < ActiveRecord::Migration[6.1]
  def change
    create_table :saved_parks do |t|
      t.integer :park_id
      t.integer :user_id

      t.timestamps
    end
  end
end
