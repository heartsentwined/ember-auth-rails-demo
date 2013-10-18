module Api
  class SessionsController < BaseController
    def create
      return missing_params unless (params[:email] && params[:password])

      @user = user_from_credentials
      return invalid_credentials unless @user

      @user.ensure_authentication_token!

      data = {
        user_id: @user.id,
        auth_token: @user.authentication_token
      }

      render json: data, status: 201
    end

    def destroy
      return missing_params unless params[:auth_token]

      @user = User.find_by authentication_token: params[:auth_token]
      return invalid_credentials unless @user

      @user.reset_authentication_token!

      render json: { user_id: @user.id }, status: 200
    end

    private

    def user_from_credentials
      if user = User.find_for_database_authentication(email: params[:email])
        if user.valid_password? params[:password]
          user
        end
      end
    end

    def missing_params
      render json: {}, status: 400
    end

    def invalid_credentials
      render json: {}, status: 401
    end
  end
end
