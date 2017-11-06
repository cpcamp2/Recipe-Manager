class Rating < ApplicationRecord
  validates :score, presence: true

  belongs_to :recipe

end
