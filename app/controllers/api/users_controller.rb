module Api
  class UsersController < AuthController
    actions :index, :show
    before_filter :auth_only!
  end
end
