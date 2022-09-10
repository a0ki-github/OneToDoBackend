class CreateFeedbacksDesiredFeatures < ActiveRecord::Migration[7.0]
  def change
    create_table :feedbacks_desired_features, id: false do |t|
      t.references :feedback, null: false, foreign_key: true
      t.references :desired_feature, null: false, foreign_key: true

      t.timestamps
    end
  end
end
