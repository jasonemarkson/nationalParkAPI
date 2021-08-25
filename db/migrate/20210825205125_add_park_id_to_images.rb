class AddParkIdToImages < ActiveRecord::Migration[6.1]
  def change
    add_column :images, :park_id, :integer
  end
end
