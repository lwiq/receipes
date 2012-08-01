class Car < ActiveRecord::Base
  belongs_to :reader

  attr_accessible :made, :age

  scope :by_made, order(:made)
  scope :by_introduction_date, order(:created_at)
  scope :oldies, where("age > 20")

  scope :by_made_and_age, lambda {|query| where("made like ?", "%#{query}%").order(:age)}
end
