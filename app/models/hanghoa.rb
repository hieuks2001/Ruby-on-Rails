class Hanghoa < ApplicationRecord
    def self.gethh(iddanhmuc,name,idtinh,price)       
        if (name != "" || price !="" || iddanhmuc !="")
            if(name !="")
            @hanghoa = Hanghoa.where("hanghoas.idtinh = ? and hanghoas.tenmathang like ? and hanghoas.tendanhmuc like ? ","#{idtinh}","%#{name}%","%#{iddanhmuc}%")
            elsif (price !="")
            @hanghoa = Hanghoa.where("hanghoas.idtinh = ? and hanghoas.tenmathang like ? and hanghoas.tendanhmuc like ? and hanghoas.dongia >= ?","#{idtinh}","%#{name}%","%#{iddanhmuc}%","#{price}")
            elsif (iddanhmuc !="")
            @hanghoa = Hanghoa.where("hanghoas.idtinh = ?  and hanghoas.tendanhmuc like ? ","#{idtinh}","%#{iddanhmuc}%")
            else
            @hanghoa = Hanghoa.where("hanghoas.idtinh = ? and hanghoas.tenmathang like ? and hanghoas.tendanhmuc like ? and hanghoas.dongia >= ?","#{idtinh}","%#{name}%","%#{iddanhmuc}%","#{price}")
            end                   
        else
            @hanghoa = Hanghoa.where(idtinh: idtinh)            
        end

    end        
end
