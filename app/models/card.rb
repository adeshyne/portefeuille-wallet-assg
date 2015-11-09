class Card < ActiveRecord::Base
	has_many :users, :through => :user_card

end
