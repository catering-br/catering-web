class ApplicationController < ActionController::Base
  layout "application"
  protect_from_forgery with: :exception

  def start_page
    render html: "EasyHost, sua festa mais fácil"
  end
end
