class TripStatesController < ApplicationController
  # GET /trip_states
  # GET /trip_states.json
  def index
    @trip_states = TripState.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @trip_states }
    end
  end

  # GET /trip_states/1
  # GET /trip_states/1.json
  def show
    @trip_state = TripState.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @trip_state }
    end
  end

  # GET /trip_states/new
  # GET /trip_states/new.json
  def new
    @trip_state = TripState.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @trip_state }
    end
  end

  # GET /trip_states/1/edit
  def edit
    @trip_state = TripState.find(params[:id])
  end

  # POST /trip_states
  # POST /trip_states.json
  def create
    @trip_state = TripState.new(params[:trip_state])

    respond_to do |format|
      if @trip_state.save
        format.html { redirect_to @trip_state, :notice => 'Trip state was successfully created.' }
        format.json { render :json => @trip_state, :status => :created, :location => @trip_state }
      else
        format.html { render :action => "new" }
        format.json { render :json => @trip_state.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /trip_states/1
  # PUT /trip_states/1.json
  def update
    @trip_state = TripState.find(params[:id])

    respond_to do |format|
      if @trip_state.update_attributes(params[:trip_state])
        format.html { redirect_to @trip_state, :notice => 'Trip state was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @trip_state.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /trip_states/1
  # DELETE /trip_states/1.json
  def destroy
    @trip_state = TripState.find(params[:id])
    @trip_state.destroy

    respond_to do |format|
      format.html { redirect_to trip_states_url }
      format.json { head :no_content }
    end
  end
end
