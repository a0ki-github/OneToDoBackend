class CreateDesiredFeaturesFeedbacks < ActiveRecord::Migration[7.0]
  def change
    create_table :desired_features_feedbacks, id: false do |t|
      t.references :desired_feature, null: false, foreign_key: true
      t.references :feedback, null: false, foreign_key: true

      t.timestamps
    end
  end
end
