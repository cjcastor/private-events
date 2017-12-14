class User < ApplicationRecord
  has_many :events, :foreign_key => "host_id"

  validates :name, presence: true
  validates :email, presence: true
end
