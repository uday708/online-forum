class CommentsController < ApplicationController
  before_action :load_resource

  def new
    @comment = Comment.new
  end

  def create
    @comment = @commentable.comments.new(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to root_path, notice: 'Your comment successfully posted!'
    else
      redirect_to posts_path
    end
  end

  def delete
    @commentable.destroy
    redirect_to posts_path
  end

  private

  def comment_params
    params[:comment].permit(:message)
  end

  def load_resource
    @commentable = Comment.find_by(id: params[:comment_id]) if params[:comment_id]
    @commentable = Post.find_by(id: params[:post_id]) if params[:post_id]
  end
end

