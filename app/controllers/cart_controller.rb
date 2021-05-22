class CartController < ApplicationController
    before_action :_header  
    def _header
      @users = User.find_by session[:user_id]
      @sl =  Thanhtoan.where(iduser: @users.id).count
      end
    def cart
        @product = Hanghoa.where(id: params[:idhanghoa])

        @thanhtoan = Thanhtoan.create(name: params[:name], iduser: params[:iduser],iddm:params[:danhmuc],type_book: params[:type] ,amount:params[:amount],time:params[:time],note: params[:note],activation:"0")
        
          if @thanhtoan.save
            flash[:success] = "Đặt thành công"
          else
            flash[:success] = "Vui lòng thử lại"
            render :new
          end      
    end
    def giohang
        @cart = Thanhtoan.where(iduser: params[:iduser])
       
     
    end
end
