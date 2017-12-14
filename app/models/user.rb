class User < ApplicationRecord
  has_many :party_attendees, :foreign_key => :attendee_id
  has_many :attended_events, :through => :party_attendees, :source => :event
  has_many :events, :foreign_key => "host_id"

  validates :name, presence: true
  validates :email, presence: true
end
