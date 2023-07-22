class SearchController < ApplicationController
  def index
    @query = Room.ransack(params[:q])
    @rooms = @query.result(distinct: true)
  end
end
