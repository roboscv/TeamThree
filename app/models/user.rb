class User < ActiveRecord::Base
	has_many :reservations, dependent: :destroy
 	has_many :books, :through => :reservations

 	attr_accessible :user_id
	has_secure_password
end