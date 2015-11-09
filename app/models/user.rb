class User < ActiveRecord::Base
	has_many :cards ,:through => :user_card
end
