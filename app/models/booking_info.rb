class BookingInfo < ApplicationRecord
  belongs_to :user
  belongs_to :freegraffer
end
