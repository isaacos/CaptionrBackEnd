class Comment < ApplicationRecord
  belongs_to :photo
  belongs_to :user
  has_many :votes
  validates :user_id, presence: true

  def score
    self.votes.sum{|vote|vote.vote_status}
  end
end
