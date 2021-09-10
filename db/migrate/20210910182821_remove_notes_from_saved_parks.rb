class RemoveNotesFromSavedParks < ActiveRecord::Migration[6.1]
  def change
    remove_column :saved_parks, :notes, :string
  end
end
