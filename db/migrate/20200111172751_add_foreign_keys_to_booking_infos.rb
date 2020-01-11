class AddForeignKeysToBookingInfos < ActiveRecord::Migration[5.2]
  def change
    add_reference :booking_infos, :user, foreign_key: true
    add_reference :booking_infos, :freegrapher, foreign_key: true
  end
end
