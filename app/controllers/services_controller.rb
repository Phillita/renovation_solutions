class ServicesController < ApplicationController
	def show
	  	unless current_user.nil?
		  	job_to_user_connection = JobToUser.select("job_id").where("user_id = :id", :id => current_user.id)
		  	job_ids = Array.new
		  	job_to_user_connection.each do |job|
		  		job_ids.push(job.job_id)
		  	end
		  	@jobs = Job.where(:id => job_ids)
		  	
		  	hold = @jobs.first
		  	@jobs.each do |job|
		  		if job.created_at > hold.created_at
		  			@current_job = job
		  		else
		  			@current_job = hold
		  		end
		  		hold = job
		  	end
		end
	end
end
