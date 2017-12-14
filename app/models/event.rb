class Event < ApplicationRecord
  has_many :party_attendees
  has_many :attendees, :through => :party_attendees
  belongs_to :creator, :foreign_key => "host_id", :class_name => "User"

  scope :past, -> { where("event_date < ?", Time.now) }
  scope :upcoming, -> { where("event_date >= ?", Time.now) }

end
