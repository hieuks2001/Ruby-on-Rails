class Diadiem < ApplicationRecord
    def self.getDiadiem(nametinh)
        @diadiems = Diadiem.where("diadiems.nametinh like ?","%#{nametinh}%")
    end  
end
