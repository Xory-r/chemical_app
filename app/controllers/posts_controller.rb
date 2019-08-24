class PostsController < InheritedResources::Base

  private

    def post_params
      params.require(:post).permit(:content, :user_id)
    end

end
