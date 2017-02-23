class HomeController < ApplicationController
  def index
  end
  def viewAll
    @posts= Post.all.order(created_at: :desc)
  end
end
