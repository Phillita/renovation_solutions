class User < ActiveRecord::Base
	#before_save :hash_password
	validates_presence_of :email

	def check_email
		if User.find_by_email(self.email).nil?
			return false
		end
		return true
	end

end
