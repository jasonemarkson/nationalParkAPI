class AddSavedParkIdToAttractions < ActiveRecord::Migration[6.1]
  def change
    add_column :attractions, :saved_park_id, :integer
  end
end
