class PagesController < ApplicationController
  def home
       @freegraffers = Freegraffer.where(stars: 5)
  end
end
