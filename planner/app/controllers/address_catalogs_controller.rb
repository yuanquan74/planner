class AddressCatalogsController < ApplicationController
  # GET /address_catalogs
  # GET /address_catalogs.json
  def index
    @address_catalogs = AddressCatalog.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @address_catalogs }
    end
  end

  # GET /address_catalogs/1
  # GET /address_catalogs/1.json
  def show
    @address_catalog = AddressCatalog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @address_catalog }
    end
  end

  # GET /address_catalogs/new
  # GET /address_catalogs/new.json
  def new
    @address_catalog = AddressCatalog.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @address_catalog }
    end
  end

  # GET /address_catalogs/1/edit
  def edit
    @address_catalog = AddressCatalog.find(params[:id])
  end

  # POST /address_catalogs
  # POST /address_catalogs.json
  def create
    @address_catalog = AddressCatalog.new(params[:address_catalog])

    respond_to do |format|
      if @address_catalog.save
        format.html { redirect_to @address_catalog, :notice => 'Address catalog was successfully created.' }
        format.json { render :json => @address_catalog, :status => :created, :location => @address_catalog }
      else
        format.html { render :action => "new" }
        format.json { render :json => @address_catalog.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /address_catalogs/1
  # PUT /address_catalogs/1.json
  def update
    @address_catalog = AddressCatalog.find(params[:id])

    respond_to do |format|
      if @address_catalog.update_attributes(params[:address_catalog])
        format.html { redirect_to @address_catalog, :notice => 'Address catalog was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @address_catalog.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /address_catalogs/1
  # DELETE /address_catalogs/1.json
  def destroy
    @address_catalog = AddressCatalog.find(params[:id])
    @address_catalog.destroy

    respond_to do |format|
      format.html { redirect_to address_catalogs_url }
      format.json { head :no_content }
    end
  end
end
