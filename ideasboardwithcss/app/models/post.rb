class Post < ApplicationRecord
  has_many :comments
  belongs_to :user
  acts_as_votable

  def score
    self.get_upvotes.size - self.get_downvotes.size
  end

  def self.search(search)
    if search
      where('title ILIKE ?', "%#{search}%")

    else
      all
    end
  end


end
