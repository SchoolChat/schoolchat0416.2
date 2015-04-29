class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    email    = params_user[:email]
    password = params_user[:password]

    if login(email, password)
      redirect_to root_url, notice: "successfully logged in."
    else
      @user = User.new(email: email)
    render :new
    end
  end

  def destroy
    @user= current_user
    # logout
    reset_session
    # cookies.delete(:remember_token)
    redirect_to schools_path, notice: "ログアウトしました"
  end

  private
  def params_user
  params.require(:user).permit(:email, :password)
  end
end
