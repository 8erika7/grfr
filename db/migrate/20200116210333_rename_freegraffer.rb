class RenameFreegraffer < ActiveRecord::Migration[5.2]
  def self.up
    rename_table :freegraphers, :freegraffers
  end

  def self.down
    rename_table :freegraffers, :freegraphers
  end
end
