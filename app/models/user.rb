class User < ApplicationRecord
  has_many :user_groups
  has_many :groups, through: :user_groups
  has_many :user_events
  has_many :events, through: :user_events
  has_many :created_events, class_name: 'Event'

  validates :username, uniqueness: true
  validates :email, uniqueness: true, allow_blank: true
  
  has_secure_password
end



# has_many :attending_events, through: :user_events, source: :event
# has_many :events