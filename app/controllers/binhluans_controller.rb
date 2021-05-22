class BinhluansController < ApplicationController
    before_action :_header  
    def _header
      @users = User.find_by session[:user_id]
    @sl =  Thanhtoan.where(iduser: @users.id).count
      end
     #contact
     def contact
        @binhluans= Binhluan.new 
      end
      def new
      end
      def create
        @binhluan = Binhluan.new binhluans_params
        if @binhluan.save
          flash[:success] = "Gửi phản hồi thành công"        
          redirect_to "/"

        else
          flash[:success] = "Gửi phản hồi thất bại"
          render :new
        end  
      end
    
      private
      def binhluans_params
        params.require(:binhluan).permit :noidung,:iduser,:username,:emailfb,:typecmt,:activation
      end
  
end
