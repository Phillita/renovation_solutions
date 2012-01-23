class AddUserData < ActiveRecord::Migration
  def self.up
  	type = ["client", "contractor", "worker"]

  	(0..2).each do |i|
  		u = User.new
  		u.email = "t" + type[i]
  		u.user_type = type[i]
	  	u.first_log_on = true
	  	u.password = "password"
	  	u.save
	end

	(0..2).each do |i|
  		u = User.new
  		u.email = "d" + type[i]
  		u.user_type = type[i]
	  	u.first_log_on = true
	  	u.password = "password"
	  	u.save
	end

	(0..2).each do |i|
  		u = User.new
  		u.email = "b" + type[i]
  		u.user_type = type[i]
	  	u.first_log_on = true
	  	u.password = "password"
	  	u.save
	end

	(1..3).each do |i|
  		p = Profile.new
  		p.user_id = i
  		p.first_name = "Tayler"
  		p.last_name = "Phillips"
  		p.address = "123 Reno Steet"
  		p.city = "London"
  		p.country = "Canada"
  		p.postal_code = "n3r 4m6"
	  	p.save
	end

	(4..6).each do |i|
  		p = Profile.new
  		p.user_id = i
  		p.first_name = "Dave"
  		p.last_name = "Workman"
  		p.address = "123 Reno Steet"
  		p.city = "London"
  		p.country = "Canada"
  		p.postal_code = "n3r 4m6"
	  	p.save
	end

	(7..9).each do |i|
  		p = Profile.new
  		p.user_id = i
  		p.first_name = "Billy"
  		p.last_name = "Cai"
  		p.address = "123 Reno Steet"
  		p.city = "London"
  		p.country = "Canada"
  		p.postal_code = "n3r 4m6"
	  	p.save
	end
  end

  def self.down
  end
end
