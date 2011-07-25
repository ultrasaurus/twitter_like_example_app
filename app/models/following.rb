class Following < ActiveRecord::Base
  belongs_to :followed_person, :class_name => 'Person'
  belongs_to :follower, :class_name => 'Person'
end
