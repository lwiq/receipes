class Subscription < ActiveRecord::Base
  belongs_to :magazine
  belongs_to :reader

  attr_accessible :last_renewal_on, :length_in_issues
end
