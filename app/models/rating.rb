class Rating < ApplicationRecord
  validates :score, presence: true

  belongs_to :recipe
  belongs_to :user
end
