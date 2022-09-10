class Feedback < ApplicationRecord
  has_and_belongs_to_many :desired_features
end
