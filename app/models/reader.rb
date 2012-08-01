class Reader < ActiveRecord::Base
  has_many :subscriptions
  has_many :magazines, :through => :subscriptions
  has_many :cars

  attr_accessible :name
end
