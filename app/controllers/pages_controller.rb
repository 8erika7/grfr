class PagesController < ApplicationController
  def home
       @freegraffers = Freegraffer.all
  end
end
