class CommentsController < ApplicationController
  def create
    @comment = Comment.new(params[:comments])
    @comment.post_id = params[:post_id]
    @comment.save

    redirect_to post_path(@comment.post)
  end

  def comment_params
    params.require(:comment).permit(:name, :body)
  end
end
