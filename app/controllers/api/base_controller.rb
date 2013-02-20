module Api
  class BaseController < ApplicationController
    inherit_resources
    respond_to :json
    before_filter :default_json

    def collection
      get_collection_ivar || begin
        c = end_of_association_chain
        coll = c.respond_to?(:scoped) ? c.scoped : c
        coll = params[:ids] ? coll.find(params[:ids]) : coll.all
        set_collection_ivar(coll)
      end
    end

    protected

    def default_json
      request.format = :json if params[:format].nil?
    end
  end
end
