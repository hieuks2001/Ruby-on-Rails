class CreateBinhluans < ActiveRecord::Migration[6.1]
  def change
    create_table :binhluans,id:false  do |t|
      t.integer :id_cmt, null:false,primary_key:true
      t.string  :noidung
      t.string  :username
      t.string  :emailfb
      t.string  :type
    end
  end
end
