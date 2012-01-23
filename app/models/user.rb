class User < ActiveRecord::Base
	has_one :profile

	#before_save :hash_password
	validates_presence_of :email

	def check_email
		if User.find_by_email(self.email).nil?
			return false
		end
		return true
	end

	def send_random_password
		pwd = Password::generate_random_password
		self.password = pwd
		#send password to user
	end

end
