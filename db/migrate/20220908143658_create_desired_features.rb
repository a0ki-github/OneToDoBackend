class CreateDesiredFeatures < ActiveRecord::Migration[7.0]
  def change
    create_table :desired_features do |t|
      t.string :name

      t.timestamps
    end
  end
end
