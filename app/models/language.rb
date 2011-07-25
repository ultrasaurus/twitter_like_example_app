class Language < ActiveRecord::Base
  has_many :people
  has_many :tweets
end
