class ProfessionalsController < ApplicationController
  before_action :set_professional, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_client!, only: [:new, :create, :edit]

  # GET /professionals
  # GET /professionals.json
  def index
    # raise ActionController::RoutingError.new('Not Found')
    @professionals = Professional.all
    if client_signed_in?
      @current_client_id = current_client.id
    else
      @current_client_id = nil
    end

  end

  # GET /professionals/1
  # GET /professionals/1.json
  def show
  end

  # GET /professionals/new
  def new
    if Professional.where(client_id: current_client.id).take == nil
      @professional = Professional.new
    else
      redirect_to professionals_path, notice: 'You already are a professional.'
    end
  end

  # GET /professionals/1/edit
  def edit
  end

  # POST /professionals
  # POST /professionals.json
  def create
    @professional = Professional.new(professional_params)
    @professional.client_id = current_client.id
    respond_to do |format|
      if @professional.save
        @notification = Notification.new(:professional_id => @professional.id, :counter => 0)
        @notification.save
        format.html { redirect_to @professional, notice: 'Professional was successfully created.' }
        format.json { render :show, status: :created, location: @professional }
      else
        format.html { render :new }
        format.json { render json: @professional.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /professionals/1
  # PATCH/PUT /professionals/1.json
  def update
    respond_to do |format|
      if @professional.update(professional_params)
        format.html { redirect_to @professional, notice: 'Professional was successfully updated.' }
        format.json { render :show, status: :ok, location: @professional }
      else
        format.html { render :edit }
        format.json { render json: @professional.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /professionals/1
  # DELETE /professionals/1.json
  def destroy
    @professional.destroy
    respond_to do |format|
      format.html { redirect_to professionals_url, notice: 'Professional was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_professional
      @professional = Professional.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def professional_params
      params.require(:professional).permit(:client_id, :description, :rating, :logo)
    end
end
