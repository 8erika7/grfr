class CreateBookingInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :booking_infos do |t|
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
