class AddDescriptionToTours < ActiveRecord::Migration[5.2]
  def change
    add_column :tours, :description, :text
  end
end
