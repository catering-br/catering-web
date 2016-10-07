class Shopping_cart
  #attr_accessor :items
  def initialize
    @items = Array.new
    @quantities = Array.new
  end
  def append(item, quantity)
    @items.append(item)
    @quantities.append(quantity)
  end
  def len
    @items.length
  end

end

class MainClientsController < ApplicationController
  before_action :set_main_client, only: [:show, :edit, :update, :destroy]
  # before_action :load_products
  helper_method :add_product_car
  attr_accessor :shoppingcart

  #$cartitem = Struct.new(:product,:quantity)

  # GET /main_clients
  # GET /main_clients.json
  def index
    # @products = Product.all
    @shoppingcart = Shopping_cart.new
    @shoppingcart.append(1,1)
    #
    # print(@shoppingcart.len)
    @main_clients = load_products(params[:cep])

  end

  # GET /main_clients/1
  # GET /main_clients/1.json
  def show
  end

  # GET /main_clients/new
  def new
    @main_client = MainClient.new

  end

  # GET /main_clients/1/edit
  def edit
  end

  # POST /main_clients
  # POST /main_clients.json
  def create
    @main_client = MainClient.new(main_client_params)

    respond_to do |format|
      if @main_client.save
        format.html { redirect_to @main_client, notice: 'Main client was successfully created.' }
        format.json { render :show, status: :created, location: @main_client }
      else
        format.html { render :new }
        format.json { render json: @main_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /main_clients/1
  # PATCH/PUT /main_clients/1.json
  def update
    respond_to do |format|
      if @main_client.update(main_client_params)
        format.html { redirect_to @main_client, notice: 'Main client was successfully updated.' }
        format.json { render :show, status: :ok, location: @main_client }
      else
        format.html { render :edit }
        format.json { render json: @main_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /main_clients/1
  # DELETE /main_clients/1.json
  def destroy
    @main_client.destroy
    respond_to do |format|
      format.html { redirect_to main_clients_url, notice: 'Main client was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def add_product_car(product)
    redirect_to shoppingcart: show
    shoppingcart.append(product,1)
    puts(shoppingcart.len)


    #logger.debug 'Just do it'
    #redirect_to(root_url)
  end

  private
    def load_products(cep)
      if (cep and cep!='')
        # @productores = Professional.where

        @products = Product.where(rating:cep)
        # where('rating LIKE ?', "%#{cep}%")
      else
        @products = Product.all.limit(15)
      end
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_main_client
      #@main_client = MainClient.find(params[:id])
      @main_client=MainClient.new(main_client_path)

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def main_client_params
      params.require(:main_client).permit(:Product, :Quantidade)
    end


end
