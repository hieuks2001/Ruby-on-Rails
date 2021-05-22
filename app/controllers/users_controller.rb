class UsersController < ApplicationController
    before_action :_header  
    def _header
        @users = User.find_by session[:user_id]
        @sl =  Thanhtoan.where(iduser: @users.id).count
      end
    def index
        @diadiems = Diadiem.all
        @cmts  = Binhluan.where(typecmt:"feedback")      

      end
      def about
        @diadiems = Diadiem.all
        @cmts  = Binhluan.where(typecmt:"feedback")      
      end

#register
      def new
        @user = User.new
      end    
      def create
        @user = User.new user_params
        if @user.save
          flash[:success] = "Register success"
          redirect_to "/login"
        else
          flash[:success] = "Register failed"
          render :new
        end        
      end
      private
      def user_params
        params.require(:user).permit :username,:email, :password, :password_confirmation
      end
#Edit
      def edit
        @users = User.find_by session[:user_id]       

      end

end
