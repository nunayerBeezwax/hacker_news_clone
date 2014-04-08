class PointsController < ApplicationController

  def new
    @link = Link.find(params[:format])
    @point = Point.new
    @point.link_id = @link.id
    @point.save
    redirect_to "/"
  end
end
