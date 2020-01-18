class ChangeFreegraphersFreegraffers < ActiveRecord::Migration[5.2]
  def change
    rename_table :freegraphers, :freegraffers
  end
end
