class BankingsController < ApplicationController
  before_action :set_banking, only: [:show, :edit, :update, :destroy]

  # GET /bankings
  # GET /bankings.json
  def index
    @bankings = Banking.all
  end

  # GET /bankings/1
  # GET /bankings/1.json
  def show
  end

  # GET /bankings/new
  def new
    @banking = Banking.new
  end

  # GET /bankings/1/edit
  def edit
  end

  # POST /bankings
  # POST /bankings.json
  def create
    @banking = Banking.new(banking_params)

    respond_to do |format|
      if @banking.save
        format.html { redirect_to @banking, notice: 'Banking was successfully created.' }
        format.json { render :show, status: :created, location: @banking }
      else
        format.html { render :new }
        format.json { render json: @banking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bankings/1
  # PATCH/PUT /bankings/1.json
  def update
    respond_to do |format|
      if @banking.update(banking_params)
        format.html { redirect_to @banking, notice: 'Banking was successfully updated.' }
        format.json { render :show, status: :ok, location: @banking }
      else
        format.html { render :edit }
        format.json { render json: @banking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bankings/1
  # DELETE /bankings/1.json
  def destroy
    @banking.destroy
    respond_to do |format|
      format.html { redirect_to bankings_url, notice: 'Banking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banking
      @banking = Banking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def banking_params
      params.require(:banking).permit(:professional_id, :bank, :agency, :account)
    end
end
