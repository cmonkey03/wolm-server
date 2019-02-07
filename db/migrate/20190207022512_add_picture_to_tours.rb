class AddPictureToTours < ActiveRecord::Migration[5.2]
  def change
    add_column :tours, :image_url, :string
  end
end
