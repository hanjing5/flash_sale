class Subscriber < ActiveRecord::Base
	attr_accessible :email, :type,:watches,:ties,:dress_shirts,:shoes
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
#  watches       :boolean(1)
#  ties          :boolean(1)
#  dress_shirts  :boolean(1)
#  shoes         :string(255)
#

