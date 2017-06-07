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

ActiveRecord::Schema.define(version: 20170607023604) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activos", force: :cascade do |t|
    t.text "Descripcion"
    t.float "monto"
    t.date "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "detalle_sectors", force: :cascade do |t|
    t.integer "sector"
    t.integer "empleado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "encargados", force: :cascade do |t|
    t.string "nombre"
    t.string "telefono"
    t.string "correo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evaluos", force: :cascade do |t|
    t.integer "tipo"
    t.string "Activo"
    t.string "integer"
    t.text "descripcion"
    t.float "montoactual"
    t.date "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sectors", force: :cascade do |t|
    t.string "descripcion"
    t.string "ubicacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipos", force: :cascade do |t|
    t.string "bienes"
    t.integer "vida_util"
    t.float "Coeficiente"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
