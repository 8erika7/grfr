class PagesController < ApplicationController
  def home
       @freegraffers = Freegraffer.limit(6)
  end
end
