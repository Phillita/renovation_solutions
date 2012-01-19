class ServicesController < ApplicationController
  def show
  	@user = User.new if current_user.nil?
  end
end
