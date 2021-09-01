class AddStatesToParks < ActiveRecord::Migration[6.1]
  def change
    add_column :parks, :states, :string
  end
end
