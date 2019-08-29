class PostsController < InheritedResources::Base
  
  def index
  end

  private

    def post_params
      params.require(:post).permit(:content, :user_id)
    end

end
