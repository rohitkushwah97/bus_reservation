class UsersController < ApplicationController
	before_action :get_user, only: [:show]

  def index
  	@users = User.all
  end

  def new
    @user = User.new
  end

  def create
	 	user = User.create(user_signup_params)
    redirect_to users_path(user)
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_signup_params)

    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:id])
    @user = @user.destroy
    redirect_to users_path
  end

  private

	  def user_signup_params
	  	params.require(:user).permit(:first_name, :last_name, :phone_number, :age, :dob, :type, :gender, :email)
	  end

	  def get_user
	  	@user = User.find_by(id: params[:id])
	  end

end