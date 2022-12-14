class LikesController < ApplicationController
  def create
    @like = Like.new like_params
    @author = current_user
    @like.user = @author

    redirect_to post_path @like.post
  end

  private

  def like_params
    params.require(:like).permit(:post_id)
  end
end
