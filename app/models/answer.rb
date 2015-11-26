class Answer < ActiveRecord::Base
  validates :age, presence: true
  validates :income, presence: true
  validates :calories, presence: true
  validates :aerobic_hours, presence: true
  validates :daily_read, presence: true
  validates :network, presence: true
  validates :tv_hours, presence: true
  validates :hours_before_work, presence: true
end
