class WelcomeController < ApplicationController
  def index
    @user= current_user
    @users = User.all
  end

  def about
    @user= current_user
  end
  def contact
    @user= current_user
  end
  def submit
    @user= current_user
  end

end