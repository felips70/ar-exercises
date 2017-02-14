class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, :last_name, presence: true
  validates_numericality_of :hourly_rate, :greater_than_or_equal_to => 40
  validates_numericality_of :hourly_rate, :less_than_or_equal_to => 200
  validates_associated :store

end
