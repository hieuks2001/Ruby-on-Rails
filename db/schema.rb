# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_17_151851) do

  create_table "binhluans", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "idhh"
    t.string "noidung", null: false
    t.integer "iduser", null: false
    t.string "username", null: false
    t.string "emailfb", limit: 45
    t.string "type", null: false
    t.column "activation", "enum('0','1')", null: false
    t.integer "idblog", null: false
  end

  create_table "blogs", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "iduser", null: false
    t.string "username", null: false
    t.string "title", null: false
    t.string "img", limit: 45, null: false
    t.string "preamble", null: false
    t.text "content", size: :long, null: false
    t.datetime "time", null: false
    t.column "activation", "enum('0','1')", null: false
    t.string "tag", limit: 45, null: false
  end

  create_table "danhmucs", primary_key: "iddanhmuc", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "tendanhmuc"
  end

  create_table "diadiems", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.integer "idtinh"
    t.string "anh"
    t.string "motadd"
  end

  create_table "doanhthus", id: false, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "id", null: false
    t.integer "idthanhtoan", null: false
    t.integer "money", null: false
    t.datetime "date", null: false
  end

  create_table "hanghoas", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "tenmathang", null: false
    t.integer "iddanhmuc", null: false
    t.integer "idtinh", null: false
    t.integer "soluong", null: false
    t.integer "dongia", null: false
    t.string "anh", null: false
    t.string "content", limit: 45, null: false
    t.integer "iduser", null: false
    t.string "address", null: false
  end

  create_table "tagblogs", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
  end

  create_table "thanhtoans", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", limit: 45
    t.integer "iduser"
    t.string "iddm"
    t.string "type"
    t.integer "amount"
    t.datetime "time"
    t.string "note", limit: 45
    t.column "activation", "enum('0','1')"
  end

  create_table "tinhs", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "namecity"
  end

  create_table "users", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "email", limit: 45
    t.string "sdt", limit: 45
    t.string "fullname"
    t.string "birthday", limit: 45
    t.string "sex", limit: 45
    t.string "role"
    t.string "avatar", limit: 45
  end

end
