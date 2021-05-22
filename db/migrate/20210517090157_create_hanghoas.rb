class CreateHanghoas < ActiveRecord::Migration[6.1]
  def change
    create_table :hanghoas,id:false  do |t|
      t.integer :id_hanghoa, null:false,primary_key:true
      t.string  :namehh
      t.integer :iddm
      t.integer :idtinh
      t.integer :soluong
      t.integer :dongia
      t.string  :anh
      t.string  :mota
      t.integer :id_user
     
    end
  end
end
