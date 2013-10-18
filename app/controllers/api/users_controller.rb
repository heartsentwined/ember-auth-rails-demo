module Api
  class UsersController < BaseController
    before_action :auth_only!

    def index
      if params[:ids]
        @users = User.find(params[:ids])
      else
        @users = User.all
      end
      respond_with @users
    end

    def show
      @user = User.find(params[:id])
      respond_with @user
    end
  end
end
