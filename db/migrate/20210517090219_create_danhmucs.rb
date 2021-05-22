class CreateDanhmucs < ActiveRecord::Migration[6.1]
  def change
    create_table :danhmucs,id:false  do |t|

      t.integer :id_dm, null:false,primary_key:true
      t.string  :namedm
    end
  end
end
