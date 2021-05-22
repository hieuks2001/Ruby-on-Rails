class SessionController < ApplicationController
    before_action :_header  

  def _header
    @users = User.find_by session[:user_id]
    @sl =  Thanhtoan.where(iduser: @users.id).count
  end

  def new
  end
  def create
    user = User.find_by username: params[:session][:name].downcase
    if user && user.authenticate(params[:session][:password])
      flash[:success] = "Login success"
      log_in user
      redirect_to "/"
    else
      flash[:danger] = "Sai tên tài khoản hoặc mật khẩu"
      render :login 
    end
  end

  def destroy
    log_out
    flash[:success] = "You are logged out"
    redirect_to "/login"
  end
end
