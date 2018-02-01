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

ActiveRecord::Schema.define(version: 20180131234721) do

  create_table "contacts", force: :cascade do |t|
    t.string "telefone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "student_id"
    t.index ["student_id"], name: "index_contacts_on_student_id"
  end

  create_table "disciplines", force: :cascade do |t|
    t.string "descricao"
    t.string "abreviacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "semesters", force: :cascade do |t|
    t.integer "ano"
    t.integer "periodo"
    t.date "inicio"
    t.date "fim"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "nome"
    t.string "matricula"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subscriptions", force: :cascade do |t|
    t.float "nota"
    t.float "cre"
    t.boolean "selecionado"
    t.datetime "form_voluntario"
    t.datetime "form_relatorio"
    t.integer "discipline_id"
    t.integer "semester_id"
    t.integer "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["discipline_id"], name: "index_subscriptions_on_discipline_id"
    t.index ["semester_id"], name: "index_subscriptions_on_semester_id"
    t.index ["student_id"], name: "index_subscriptions_on_student_id"
  end

end
