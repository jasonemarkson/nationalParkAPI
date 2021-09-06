class AddAdditionalInfoToSavedParks < ActiveRecord::Migration[6.1]
  def change
    add_column :saved_parks, :attractions, :string
    add_column :saved_parks, :notes, :string
  end
end
