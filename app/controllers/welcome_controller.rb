class WelcomeController < ApplicationController
  layout  "welcome"

  def index
  end

  def filter
  end

  def redirect
    #redirect_to products_path(:category => params[:welcome][:category_product_id])
    redirect_to events_path
  end

end
