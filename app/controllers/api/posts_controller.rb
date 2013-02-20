module Api
  class PostsController < BaseController
    actions :index, :show
    before_filter :authenticate_user!, only: [:show]
  end
end
