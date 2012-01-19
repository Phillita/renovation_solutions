class HomeController < ApplicationController
  def index
    @user = User.new if current_user.nil?

  	respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
    end
  end

  def login
  	user = User.find_by_email_and_password(params[:email].to_s, params[:password].to_s)
  	if user == nil
  		flash[:error] = "Incorrect password or email. Please try and retype your credentials."
  		redirect_to "/home/index"
  	else
  		#flash[:notice] = "Successfully logged in."
      
  		session[:user_id] = user.id
  		redirect_to request.referrer
  	end
  end

  def logout
  	unless session[:user_id].nil?
  		session[:user_id] = nil
  		#flash[:notice] = "Successfully logged out."
  		redirect_to "/home/index"
  	end
  end

  def about
    @user = User.new if current_user.nil?
  end

  def contact
    @user = User.new if current_user.nil?
  end
end
