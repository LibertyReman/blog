class HomeController < ApplicationController

  def index
    @latest_item_num = 1..12
    @popular_item_num = 1..4
  end

  def about
  end

end
