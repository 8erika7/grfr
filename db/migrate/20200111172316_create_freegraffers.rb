class CreateFreegraffers < ActiveRecord::Migration[5.2]
  def change
    create_table :freegraffers do |t|
      t.string :description
      t.string :style
      t.integer :price
      t.boolean :disponibility
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
