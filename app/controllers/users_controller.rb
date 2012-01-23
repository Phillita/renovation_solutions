class UsersController < ApplicationController
  # GET /users
  # GET /users.xml
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

  # GET /users/1
  # GET /users/1.xml
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/new
  # GET /users/new.xml
  def new
    @user = User.new
    @user.email = params[:email]
    @user.password = params[:password]

    #respond_to do |format|
    #  format.html # new.html.erb
    #  format.xml  { render :xml => @user }
    #end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.xml
  def create
    @user = User.new
    @user.email = params[:email]
    #@user.password = params[:password]
    unless @user.check_email
      @user.send_random_password
      @user.save
      session[:user_id] = @user.id
      email = Emailer.new
      email.contact(@user.email, "Renovation Solutions", "Your password to enter the site again is: " + @user.password + ". \nOnce you disconnect from the site you will need to provide this to login. \nYou will be asked to change this password the first time you log in.")
      redirect_to :controller => "emailer", :action => "sendmail", params[:email] => email
      flash[:notice] = "Successfully created! An email was sent to you to confirm it is legitimate."
      #redirect_to "/home/index"
    else
      flash[:error] = "Email Already Exists."
      redirect_to "/home/index"
    end
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(@user, :notice => 'User was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end
end
