class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    binding.pry
    if @comment.save
      redirect_to @post
    else
    end
  end

  def comment_params
    params.require(:comment).permit(:name, :body)
  end
end
