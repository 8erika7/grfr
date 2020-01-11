class CreateBookingInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :booking_infos do |t|
      t.date :start_date
      t.date :end_date
      t.references :user, foreign_key: true
      t.references :freegraffer, foreign_key: true

      t.timestamps
    end
  end
end
