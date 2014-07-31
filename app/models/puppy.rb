class Puppy < ActiveRecord::Base
  has_many :dashboards
  belongs_to :dashboard
end
