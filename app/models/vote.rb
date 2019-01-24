class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :comment
  validates :vote_status, inclusion: {in: -1..1}
end
