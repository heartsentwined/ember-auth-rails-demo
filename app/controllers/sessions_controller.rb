class SessionsController < Devise::SessionsController
  def create
    return missing_params unless params[:email] && params[:password]

    build_resource
    resource = resource_from_credentials
    return invalid_credentials unless resource

    resource.ensure_authentication_token!
    data = {
      user_id: resource.id,
      auth_token: resource.authentication_token,
    }
    render json: data, status: 201
  end

  def destroy
    return missing_params unless params[:auth_token]

    resource = resource_class.find_by_authentication_token(params[:auth_token])
    return invalid_credentials unless resource

    resource.reset_authentication_token!
    render json: {user_id: resource.id}, status: 200
  end

  protected

  def missing_params
    warden.custom_failure!
    return render json: {}, status: 400
  end

  def invalid_credentials
    warden.custom_failure!
    render json: {}, status: 401
  end

  def resource_from_credentials
    data = { email: params[:email] }
    if res = resource_class.find_for_database_authentication(data)
      if res.valid_password?(params[:password])
        res
      end
    end
  end
end
