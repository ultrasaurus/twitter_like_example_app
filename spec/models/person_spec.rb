require 'spec_helper'

describe Person do
  should_belong_to :language
  should_have_many :tweets
  should_have_many :followings
  should_have_many :followers
  should_have_many :followed_people
end
