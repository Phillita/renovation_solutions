class QuoteAuditsController < ApplicationController
  # GET /quote_audits
  # GET /quote_audits.xml
  def index
    @quote_audits = QuoteAudit.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @quote_audits }
    end
  end

  # GET /quote_audits/1
  # GET /quote_audits/1.xml
  def show
    @quote_audit = QuoteAudit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @quote_audit }
    end
  end

  # GET /quote_audits/new
  # GET /quote_audits/new.xml
  def new
    @quote_audit = QuoteAudit.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @quote_audit }
    end
  end

  # GET /quote_audits/1/edit
  def edit
    @quote_audit = QuoteAudit.find(params[:id])
  end

  # POST /quote_audits
  # POST /quote_audits.xml
  def create
    @quote_audit = QuoteAudit.new(params[:quote_audit])

    respond_to do |format|
      if @quote_audit.save
        format.html { redirect_to(@quote_audit, :notice => 'Quote audit was successfully created.') }
        format.xml  { render :xml => @quote_audit, :status => :created, :location => @quote_audit }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @quote_audit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /quote_audits/1
  # PUT /quote_audits/1.xml
  def update
    @quote_audit = QuoteAudit.find(params[:id])

    respond_to do |format|
      if @quote_audit.update_attributes(params[:quote_audit])
        format.html { redirect_to(@quote_audit, :notice => 'Quote audit was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @quote_audit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /quote_audits/1
  # DELETE /quote_audits/1.xml
  def destroy
    @quote_audit = QuoteAudit.find(params[:id])
    @quote_audit.destroy

    respond_to do |format|
      format.html { redirect_to(quote_audits_url) }
      format.xml  { head :ok }
    end
  end
end
