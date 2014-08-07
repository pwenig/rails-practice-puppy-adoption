class Playdate < ActiveRecord::Base
  belongs_to :puppy
  has_many :puppies

  validate :date_in_past

  def date_in_past
    if date.past? == true
      errors.add(:date, "You cannot choose a date in the past")
    end
  end

end