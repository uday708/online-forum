class CommentsController < ApplicationController
  before_action :load_resource

  def create
    @comment = post.comments.new(params[:comment].permit(:message))
    @comment.user = current_user
    if @comment.save
      redirect_to post_path(@post)
    else
      redirect_to posts_path
    end
  end

  def delete
    @post.destroy
    redirect_to posts_path
  end

  private

  def load_resource
    @post = Post.find(params[:post_id])
  end
end
