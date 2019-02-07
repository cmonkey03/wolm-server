class AddPictureToTours < ActiveRecord::Migration[5.2]
  def change
    add_column :tours, :picture, :string
  end
end
