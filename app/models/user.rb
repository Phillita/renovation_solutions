class User < ActiveRecord::Base
	#before_save :hash_password
	validates_presence_of :password, :email
end
