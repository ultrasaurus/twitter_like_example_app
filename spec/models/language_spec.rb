require 'spec_helper'

describe Language do
  should_have_many :people
  should_have_many :tweets
end
