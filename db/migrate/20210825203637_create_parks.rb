class CreateParks < ActiveRecord::Migration[6.1]
  def change
    create_table :parks do |t|
      t.string :fullName
      t.string :parkCode
      t.string :description
      t.float :latitude
      t.float :longitude
      t.string :url

      t.timestamps
    end
  end
end
