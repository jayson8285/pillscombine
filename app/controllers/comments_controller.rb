class CommentsController < ApplicationController
    def create
        # post_id의 값인 Post(글)을 찾아서 post에 선언
        post = Post.find(params[:post_id])
        
        # post의 댓글을 생성, body내용은 폼에서 보낸 input name="body" 값
        post.comments.create(body: params[:body], email: params[:email])
        
        # 전 페이지로 이동
        redirect_back(fallback_location: root_path)
    end
    
    def destroy
        # id의 값인 Comment(댓글)을 찾아서 comment에 선언
        comment = Comment.find(params[:id])
        
        # comment를 삭제
        comment.destroy
        
        # 전 페이지로 이동
        redirect_back(fallback_location: root_path)
    end
end
