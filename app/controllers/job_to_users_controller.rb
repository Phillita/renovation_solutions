class JobToUsersController < ApplicationController
  # GET /job_to_users
  # GET /job_to_users.xml
  def index
    @job_to_users = JobToUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @job_to_users }
    end
  end

  # GET /job_to_users/1
  # GET /job_to_users/1.xml
  def show
    @job_to_user = JobToUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @job_to_user }
    end
  end

  # GET /job_to_users/new
  # GET /job_to_users/new.xml
  def new
    @job_to_user = JobToUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @job_to_user }
    end
  end

  # GET /job_to_users/1/edit
  def edit
    @job_to_user = JobToUser.find(params[:id])
  end

  # POST /job_to_users
  # POST /job_to_users.xml
  def create
    @job_to_user = JobToUser.new(params[:job_to_user])

    respond_to do |format|
      if @job_to_user.save
        format.html { redirect_to(@job_to_user, :notice => 'Job to user was successfully created.') }
        format.xml  { render :xml => @job_to_user, :status => :created, :location => @job_to_user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @job_to_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /job_to_users/1
  # PUT /job_to_users/1.xml
  def update
    @job_to_user = JobToUser.find(params[:id])

    respond_to do |format|
      if @job_to_user.update_attributes(params[:job_to_user])
        format.html { redirect_to(@job_to_user, :notice => 'Job to user was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @job_to_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /job_to_users/1
  # DELETE /job_to_users/1.xml
  def destroy
    @job_to_user = JobToUser.find(params[:id])
    @job_to_user.destroy

    respond_to do |format|
      format.html { redirect_to(job_to_users_url) }
      format.xml  { head :ok }
    end
  end
end
