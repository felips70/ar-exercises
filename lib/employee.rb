class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: {only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200}
  validates_presence_of :store

  before_save do
    self.password = gen_password
  end

  private
  def gen_password
    (0...8).map { (65 + rand(26)).chr }.join.downcase
  end

end
