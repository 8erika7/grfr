class AddPhotoToFreegraffers < ActiveRecord::Migration[5.2]
  def change
    add_column :freegraffers, :photo, :string
  end
end
