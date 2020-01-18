class AddStarsToFreegraffers < ActiveRecord::Migration[5.2]
  def change
    add_column :freegraffers, :stars, :integer
  end
end
