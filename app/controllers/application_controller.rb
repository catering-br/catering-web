class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def start_page
    render html: "EasyHost, sua festa mais fácil"
  end
end
