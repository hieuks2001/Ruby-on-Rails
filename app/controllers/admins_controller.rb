class AdminsController < ApplicationController 
    layout "admin"
    before_action :_header  

    def _header
        @users = User.find_by session[:user_id]

    end
    def dashboard

    end
    def userProfile
        @user = User.all
    end
    def tables
        @danhmuc = Danhmuc.all
        @diadiems = Diadiem.all
        @hanghoa = Hanghoa.all
    end
    def feedback
        @feedback = Binhluan.where(typecmt: "feedback")
    end
    def donhang
        @thanhtoan = Thanhtoan.all
    end

    def blog
        @blog = Blog.all
    end

    def add
        @tinh = Tinh.all
        @diadiem = Diadiem.all
        @danhmuc = Danhmuc.all

        #add danh mục
        if ( params[:tendanhmuc] != nil )
        @danhmucs = Danhmuc.create(tendanhmuc: params[:tendanhmuc])
           if @danhmucs.save
            flash[:danger] = "Đặt thành công"
            redirect_to "/Admin/tables"
          else
            flash[:danger] = "Vui lòng thử lại"            
          end   
        end

        #add địa điểm
        if(params[:tendd] != nil)                    
            @diadiems= Diadiem.create(name: params[:tendd],nametinh: params[:nametinh], anh: params[:avatar], motadd: params[:motadd])
              if @diadiems.save
                flash[:danger] = "Đặt thành công"
                redirect_to "/Admin/tables"
              else
                flash[:danger] = "Vui lòng thử lại"            
              end   
        end

    end 

    def delete_ajax
            if(params[:type_p]=="user")
                @user = User.delete(params[:id])           
            end
            if(params[:type_p]=="danhmuc")
                @dm = Danhmuc.delete(params[:id])                     
            end
            if(params[:type_p]=="diadiem")
                @dd = Diadiem.delete(params[:id])                     
            end
            if(params[:type_p]=="Order")
                @tt = Thanhtoan.find_by(id: params[:id])
                @tt.update(activation: '-1')                    
            end
            if(params[:type_p]=="Blog")
                @blogg = Blog.delete(params[:id])                     
            end
            if(params[:type_p]=="hanghoa")
                @hh = Hanghoa.delete(params[:id])                     
            end
            if(params[:type_p]=="feedback")
                @fb = Binhluan.delete(params[:id])                     
            end
    end

    def e_Order
        if(params[:type_p]=="Order")
            if(params[:type]=="1")
                tt = Thanhtoan.find_by(id: params[:id])
                tt.update(activation: '1')           
            elsif (params[:type]=="2")
                @tt = Thanhtoan.find_by(id: params[:id])
                @tt.update(activation: '0')                  
            else
                @tt = Thanhtoan.find_by(id: params[:id])
                @tt.update(activation: '-1')                  
            end         
        elsif(params[:type_p]=="Blog")
            if(params[:type]=="1")
                @blogs = Blog.find_by(id: params[:id]).update(activation: '1')                  
            elsif (params[:type]=="2")
                @blogs = Blog.find_by(id: params[:id]).update(activation: '0')                  
            else
                @blogs = Blog.find_by(id: params[:id]).update(activation: '-1')                  
            end
        else
            if(params[:type]=="1")
                @fbb = Binhluan.find_by(id: params[:id]).update(activation: '1')                  
            elsif (params[:type]=="2")
                @fbb = Binhluan.find_by(id: params[:id]).update(activation: '0')                  
            else
                @fbb = Binhluan.find_by(id: params[:id]).update(activation: '-1')                  
            end
        end
    end

end
