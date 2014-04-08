class LinksController < ApplicationController
  def index
    @links = Link.all
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.create(link_params)
    flash[:notice] = "#{@link.address} has been added"
    redirect_to "/"
  end

  def show
    @link = Link.find(params[:id])
  end

  def edit
    @link = Link.find(params[:id])
  end

  def update
    @link = Link.find(params[:id])
    @link.update(link_params)
    flash[:notice] = "#{@link.address} Updated"
    redirect_to "/links"
  end

  def destroy
    @link = Link.find(params[:id])
    @link.destroy
    flash[:notice] = "#{@link.address} has been Removed"
    redirect_to "/"
  end

private
  def link_params
    params.require(:link).permit(:address, :points)
  end
end
