class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :url, :name, :comments

  def comments
    self.object.comments.map do |comment|
      {
        id: comment.id,
        body: comment.body,
        score: comment.score,
        votes: comment.votes
      }
    end
  end
end
