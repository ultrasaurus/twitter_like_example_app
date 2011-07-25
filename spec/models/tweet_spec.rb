require 'spec_helper'

describe Tweet do
  should_belong_to :language
  should_belong_to :person
end
