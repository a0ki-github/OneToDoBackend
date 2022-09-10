class DesiredFeature < ApplicationRecord
  has_and_belongs_to_many :feedbacks
end
