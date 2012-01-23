class User < ActiveRecord::Base
	has_one :profile
	has_many :phones
	has_many :job_to_users

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
