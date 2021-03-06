class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :set_professional, only: [:index, :create, :show, :new, :edit]
  before_action :authenticate_client!, only: [:new, :edit]
  before_action :makes_flow, only: [:index]

  # GET /products
  # GET /products.json
  def index
    flow_categories = ["Entradas/Salgados", "Pratos", "Sobremesas"]
    set_professional
    @category = params[:category]

    if @step != nil
      @category = CategoryProduct.find_by(name: flow_categories[Integer(@step)])
    end


    if @category
      @products = Product.where(category_product_id: @category)
    elsif @current_professional
      @products = Product.where.not(professional_id: @current_professional.id)
    else
      @products = Product.all
    end
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
      # redirect_to "/professionals/new", :notice => "You are not a professional yet!"
      redirect_to "/bankings/new", :notice => "You are not a professional yet!"
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
      @product.professional_id = @current_professional.id
      # Since we didn't decide yet, initially it will be 0
      @product.rating = 0
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

    def makes_flow
      @step = params[:step]
    end

    def set_professional
      if client_signed_in?
          @current_professional = Professional.where(client_id: current_client.id).take
          @current_cart = ShoppingCart.where(client_id: current_client.id, status: ShoppingCart.statuses['ativo']).take
          if @current_cart == nil
            @current_cart = ShoppingCart.new(client: current_client, status: ShoppingCart.statuses['ativo'])
            @current_cart.save!
          end
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:category_product_id, :name, :description, :price, :step, :event)
    end
end
