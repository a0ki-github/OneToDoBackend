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

ActiveRecord::Schema[7.0].define(version: 2022_09_08_144116) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "desired_features", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feedbacks_desired_features", id: false, force: :cascade do |t|
    t.bigint "feedback_id", null: false
    t.bigint "desired_feature_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["desired_feature_id"], name: "index_feedbacks_desired_features_on_desired_feature_id"
    t.index ["feedback_id"], name: "index_feedbacks_desired_features_on_feedback_id"
  end

  add_foreign_key "feedbacks_desired_features", "desired_features"
  add_foreign_key "feedbacks_desired_features", "feedbacks"
end
