class AdminController < ApplicationController
  def index
  	
  end

  def create
  	#debugger
  	@user = User.new
  	@user.name = params["name"]
  	@user.address = params["address"]
  	@user.gender = params["gender"]
  	@user.dob = params["dob"]
    if @user.save
  	  redirect_to admin_path(:id)
    end
  end

  def show
    @users = User.all
  end

  def edit
    
    @user = User.find(params[:id])
  end

  def update

    @user = User.find(params[:id])
      if @user.update(params[:user].permit(:name, :address, :gender, :dob))
        redirect_to admin_path(:id)
      else
        render 'edit'
      end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admin_path(:id)

  end

  private
	  #def user_params
	 	#params.require(:user).permit(:name ,:address, :gender, :dob)
	  #end
end