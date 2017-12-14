class Event < ApplicationRecord
  belongs_to :creator, :foreign_key => "host_id", :class_name => "User"
end
