class BlogsController < ApplicationController
    before_action :_header  

    def _header
        @users = User.find_by session[:user_id]
        @sl =  Thanhtoan.where(iduser: @users.id).count
    end

    def show
        @blogs = Blog.all.paginate(page: params[:page],per_page:3)   
        @tagblogs = Tagblog.all
    end
    def singleblog
        @blogs = Blog.all.paginate(page: params[:page],per_page:3)   
        @tagblogs = Tagblog.all
        @s_blogs = Blog.where(id: params[:idblog]) 
      
    end
end
