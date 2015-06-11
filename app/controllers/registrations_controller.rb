class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end


  def create
    @user = User.new(params_user)

    if @user.save
      redirect_to root_url
    else
      render :new
    end
  end

  private

  def params_user
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :school_id, :school, :school2, :residence_country, :region, :program, :childage, :schoolname, :schoolinfo)
  end
end
