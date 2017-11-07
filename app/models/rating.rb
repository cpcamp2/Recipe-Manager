class Rating < ApplicationRecord
  validates :score, presence: true
  validates_uniqueness_of :user, scope: :recipe

  belongs_to :recipe
  belongs_to :user
end
