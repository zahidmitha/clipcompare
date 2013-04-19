class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:id])
    if @user.save
      session[:user_id] = @user.id
      redirect_to rooot_url, :notice=> "Thank you for signing up!"
    else
      render "new"
    end
  end

end
