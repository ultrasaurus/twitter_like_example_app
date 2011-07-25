class Person < ActiveRecord::Base
  belongs_to :language
  has_many :tweets
  has_many :follows, :foreign_key => :followed_person_id, :class_name => "Following"
	has_many :followed_people, :through => :followings

  has_many :followings, :foreign_key => :follower_id
  has_many :followers, :through => :followings

end
