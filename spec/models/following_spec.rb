require 'spec_helper'

describe Following do
  should_belong_to :follower
  should_belong_to :followed_person
end
