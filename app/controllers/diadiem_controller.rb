class DiadiemController < ApplicationController
    before_action :_header  

    def _header
      @users = User.find_by session[:user_id]
      @sl =  Thanhtoan.where(iduser: @users.id).count
      end
      #places
      def _places
        @diadiem = Diadiem.paginate(page: params[:page],per_page:6)      
      end
      def location
        @tinh = Tinh.all
        @diadiems = Diadiem.getDiadiem(params[:tinh]).paginate(page: params[:page],per_page:6)      
        
      end
      def hotel
        @hanghoa = Hanghoa.gethh(params[:iddm],params[:name],params[:idplaces],params[:price]).paginate(page:params[:page],per_page:6)      
        @danhmucs = Danhmuc.all
      end
end
