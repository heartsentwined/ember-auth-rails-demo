module Api
  class UsersController < BaseController
    actions :index, :show
    before_filter :authenticate_user!
  end
end
