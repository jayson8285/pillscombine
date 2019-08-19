class LikeController < ApplicationController
    
    def create
        @post = Post.find(params[:post_id])
        
        like = Like.find_by(post_id: @post.id, user_id: current_user.id)
        
        if like.present?
            like.destroy
        else
            Like.create(post_id: @post.id, user_id: current_user.id)
        end
        
        redirect_back(fallback_location: root_path)

    end
end
