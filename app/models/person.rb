class Person < ActiveRecord::Base
  belongs_to :language
  has_many :tweets
end
