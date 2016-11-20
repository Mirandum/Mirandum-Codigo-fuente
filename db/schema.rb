# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161120102643) do

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "producto_id"
    t.text     "body"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["producto_id"], name: "index_comments_on_producto_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "compra_productos", force: :cascade do |t|
    t.integer  "producto_id"
    t.integer  "compra_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["compra_id"], name: "index_compra_productos_on_compra_id"
    t.index ["producto_id"], name: "index_compra_productos_on_producto_id"
  end

  create_table "compras", force: :cascade do |t|
    t.datetime "fechaSolicitada"
    t.boolean  "pagada"
    t.integer  "precioTotal"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["user_id"], name: "index_compras_on_user_id"
  end

  create_table "consumidors", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "correoElectronico"
    t.date     "fechaDeNacimiento"
    t.integer  "cedula"
    t.string   "contraseña"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "has_productos", force: :cascade do |t|
    t.integer  "compra_id"
    t.integer  "producto_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["compra_id"], name: "index_has_productos_on_compra_id"
    t.index ["producto_id"], name: "index_has_productos_on_producto_id"
  end

  create_table "personalizacions", force: :cascade do |t|
    t.datetime "fechaSolicitada"
    t.string   "descripcion"
    t.string   "color"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "cover_file_name"
    t.string   "cover_content_type"
    t.integer  "cover_file_size"
    t.datetime "cover_updated_at"
    t.index ["user_id"], name: "index_personalizacions_on_user_id"
  end

  create_table "productos", force: :cascade do |t|
    t.string   "referencia"
    t.string   "descripcion"
    t.integer  "precio"
    t.string   "color"
    t.boolean  "devuelto"
    t.string   "tipo"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "cover_file_name"
    t.string   "cover_content_type"
    t.integer  "cover_file_size"
    t.datetime "cover_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "apellido"
    t.string   "int"
    t.string   "date"
    t.integer  "permission_level",       default: 1
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
