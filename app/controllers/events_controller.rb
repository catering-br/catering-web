class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :set_addresses, only: [:new, :show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
    @event.attendants = 50
    @event.estimated_price_from = 0
    set_addresses
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    print("--------------------------------------")
    print(event_params)
    @event = Event.new(event_params)
    print(@events)
    #@event.save!

    if @event.save
      redirect_to products_path(event: @event, step: 0)
    else
      respond_to do |format|
        #format.html { redirect_to @event, notice: 'Event was successfully created.', addresses: @addresses }
        #format.json { render :show, status: :created, location: @event }
        format.html { render :new, addresses: @addresses }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end

  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_event
    @event = Event.find(params[:id])
  end

  def set_addresses
    @addresses = Address.where(client_id: current_client.id)
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def event_params
    params.require(:event).permit(:client_id, :event_data, :hour, :attendants, :address_id, :duration, :estimated_price_from, :estimated_price_until)
  end
end
