class ApplicationController < ActionController::Base
  layout "application"
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource_or_scope)
    # products_path
    #'/welcome/filter'
    @current_professional = Professional.where(client:resource_or_scope)
    if @current_professional.length>0
      products_path
    else
      new_event_path
    end

  end
end
