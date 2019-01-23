class Photo < ApplicationRecord
  has_many :comments
  belongs_to :user
  validates :user_id, presence: true
end
