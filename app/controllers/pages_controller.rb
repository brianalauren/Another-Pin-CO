class PagesController < ApplicationController


  # must create a html page for each def (home, info, etc.)
  def home
    @featured_pins = Product.where(is_featured: true)
  end

  def info
  end







end
