class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :set_professional, only: [:index, :show, :new, :edit]
  before_action :set_consumer, only: [:index, :show, :buy]
  before_action :authenticate_client!, only: [:new, :edit]
  # We should use this when along with shopping_carts


  # GET /products
  # GET /products.json
  def index
    @products = Product.all
    @pictures = Picture.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @pictures = Picture.where(product_id: @product.id)
  end

  # GET /products/new
  def new
    if @current_professional == nil
      redirect_to "/professionals/new", :notice => "You are not a professional yet!"
    end
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
    if @current_professional == nil || @current_professional.id != @product.professional_id
      redirect_to product_url(@product), :notice => "You can't edit this product"
    end
  end

  def buy


  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    def set_professional
      if client_signed_in?
          @current_professional = Professional.where(client_id: current_client.id).take
      end
    end

    def set_consumer
      if client_signed_in?
        @current_consumer = Consumer.where(client_id: current_client.id).take
        if @current_consumer != nil
          @current_cart = ShoppingCart.where(consumer: @current_consumer.id, status: ShoppingCart.statuses['ativo']).take
          if @current_cart == nil
            @current_cart = ShoppingCart.new(consumer:@current_consumer, status: ShoppingCart.statuses['ativo'])
            @current_cart.save!
          end

        end
      end

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:professional_id, :name, :description, :price, :rating)
    end
end
