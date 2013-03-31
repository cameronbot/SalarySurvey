class Entry < ActiveRecord::Base
  attr_accessible :city, :equity, :initial_offer, :months_since_last_round, :negotiated_offer, :signing_bonus, :years_experience, :notes
  geocoded_by :city, :latitude => :lat, :longitude => :lng
  after_validation :geocode
  validates :city, :presence => true
end
