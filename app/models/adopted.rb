class Adopted < ActiveRecord::Base
  has_many :puppies
  belongs_to :puppy
end