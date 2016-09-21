class WelcomeController < ApplicationController

  def index
  end

  def main_client

  end

  def open_main_client
    redirect_to main_clients_path
  end
end
