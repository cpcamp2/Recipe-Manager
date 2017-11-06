class Rating < ApplicationRecord
  validates :score

  belongs_to :recipe
end
