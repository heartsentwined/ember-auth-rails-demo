module Api
  class BaseController < ApplicationController
    respond_to :json
    before_action :default_json

    protected

    def default_json
      request.format = :json if params[:format].nil?
    end
  end
end
