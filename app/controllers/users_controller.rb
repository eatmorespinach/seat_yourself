class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
  	@user = User.new(user_params)

  	if @user.save
      BookingMailer.booked_email(@user).deliver
  		binding.pry
      redirect_to root_url, :notice => "Signed Up!"

    else
  		render :new
  	end
  end

  private

  def user_params
    params.require(:user).permit!
  end

end
