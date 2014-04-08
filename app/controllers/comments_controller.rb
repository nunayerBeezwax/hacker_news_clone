class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(comment_params)
    flash[:notice] = "#{@comment.address} has been added"
    redirect_to "/"
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @Comment.update(comment_params)
    flash[:notice] = "#{@comment.address} Updated"
    redirect_to "/comments"
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    flash[:notice] = "#{@comment.address} has been Removed"
    redirect_to "/"
  end

private
  def comment_params
    params.require(:comment).permit(:link_id, :statement)
  end
end
