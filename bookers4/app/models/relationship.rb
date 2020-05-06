class Relationship < ApplicationRecord
    belongs_to :follower, class_name: "User"
    belongs_to :following, class_name: "User"
    validates :follower_id, presence: true
    validates :following_id, presence: true
    
  def following?(other_user)
    following_relationships.find_by(following_id: other_user.id)
  end

  def follow!(other_user)
    following_relationships.create!(following_id: other_user.id)
  end

  def unfollow!(other_user)
    following_relationships.find_by(following_id: other_user.id).destroy
  end
end
