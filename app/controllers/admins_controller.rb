class AdminsController < ApplicationController



  def show
  	# @user.goods = User.good.page(params[:page]).per(20)
    @admin = Admin.find_by(:name => params[:name])
    # binding.pry
  end
end
