class UsersController < ApplicationController
  def purchase
  	@user = User.new
  end

  def confirm
  	@user = User.new
  end

end
