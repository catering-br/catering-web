class ApplicationController < ActionController::Base
  layout "application"
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource_or_scope)
    # products_path
    '/welcome/filter'
  end
end
