class EepsController < ApplicationController
  # GET /eeps
  # GET /eeps.xml
  def index
    @eeps = Eep.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @eeps }
    end
  end

  # GET /eeps/1
  # GET /eeps/1.xml
  def show
    @eep = Eep.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @eep }
    end
  end

  # GET /eeps/new
  # GET /eeps/new.xml
  def new
    @eep = Eep.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @eep }
    end
  end

  # GET /eeps/1/edit
  def edit
    @eep = Eep.find(params[:id])
  end

  # POST /eeps
  # POST /eeps.xml
  def create
    @eep = Eep.new(params[:eep])

    respond_to do |format|
      if @eep.save
        format.html { redirect_to(@eep, :notice => 'Eep was successfully created.') }
        format.xml  { render :xml => @eep, :status => :created, :location => @eep }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @eep.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /eeps/1
  # PUT /eeps/1.xml
  def update
    @eep = Eep.find(params[:id])

    respond_to do |format|
      if @eep.update_attributes(params[:eep])
        format.html { redirect_to(@eep, :notice => 'Eep was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @eep.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /eeps/1
  # DELETE /eeps/1.xml
  def destroy
    @eep = Eep.find(params[:id])
    @eep.destroy

    respond_to do |format|
      format.html { redirect_to(eeps_url) }
      format.xml  { head :ok }
    end
  end
end
