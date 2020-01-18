class RenameFreegraphersToBookingInfos < ActiveRecord::Migration[5.2]
  def change
    rename_column :booking_infos, :freegrapher_id, :freegraffer_id
  end
end
