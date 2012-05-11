class Subscriber < ActiveRecord::Base
	attr_accessible :email, :type,:watches,:casual,:formal_ties,:denim,:sunglasses, :shoes
  has_many :subscribers

	validates_uniqueness_of :email
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
end



# == Schema Information
#
# Table name: subscribers
#
#  id            :integer(4)      not null, primary key
#  email         :string(255)
#  type          :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#  subscriber_id :integer(4)
#  shoes         :boolean(1)
#  watches       :boolean(1)
#  casual        :boolean(1)
#  formal_ties   :boolean(1)
#  denim         :boolean(1)
#  sunglasses    :boolean(1)
#

