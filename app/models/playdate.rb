class Playdate < ActiveRecord::Base
belongs_to :puppy
has_many :puppies

end