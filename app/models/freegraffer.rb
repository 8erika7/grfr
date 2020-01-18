class Freegraffer < ApplicationRecord
  belongs_to :user

  def top
    where(stars: 5)
  end
end
