class HomeController < ApplicationController
  def index
  end
  def viewAll
    @posts= Post.all.search(params[:search]).order(created_at: :desc).paginate(:per_page => 5, :page => params[:page])
  end
end
