class Booking < ApplicationRecord
  belongs_to :customer, class_name: 'User'
  belongs_to :ticket

  delegate :event, to: :ticket
end
