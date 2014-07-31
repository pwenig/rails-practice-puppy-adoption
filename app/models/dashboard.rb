class Dashboard < ActiveRecord::Base
  belongs_to :puppy
  belongs_to :user
end