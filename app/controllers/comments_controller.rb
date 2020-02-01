class CommentsController < ApplicationController

def create
 @video = Video.find(params[:video_id])
 #@video = current_user.video.find(params[:comment]
 @comment = @video.comments.build(params[:comment].permit(:body))
 @comment.user_id = current_user.id
 redirect_to video_path(@video)
 @comment.save

 end

end
