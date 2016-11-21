
class SessionsController<Devise::SessionsController

  def new
    super
  end

  def create
    self.resource = warden.authenticate!(auth_options)
    set_flash_message(:notice, :signed_in) if is_navigational_format?
    sign_in(resource_name, resource)
    if !session[:return_to].blank?
      # redirect_to session[:return_to]
      redirect_to home_index_path
      session[:return_to] = nil
    else
      respond_with resource, :location => after_sign_in_path_for(resource)
    end
  end

    def after_sign_in_path_for(resource_or_scope)
      users_index_path
    end

    def after_sign_up_path_for(resource_or_scope)
      users_index_path
    end
    def after_sign_out_path_for(resource_or_scope)
      home_index_path
    end

    def after_update_path_for(resource_or_scope)
      users_index_path
    end

end