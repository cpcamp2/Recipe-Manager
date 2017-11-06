class Rating < ApplicationRecord
  validates :score

  belongs_to :recipe
  belongs_to :user
end
