class CommentsController < ApplicationController

  def create
    # raise params.inspect
    comment = Comment.create(comment_params)
    redirect_to comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
    end                                                           
end

# {"utf8"=>"✓",
#   "authenticity_token"=>"CIkWNfVsXDlaWbYjDTcNSMIvYQSU0XaiToWPbzMNYy+7puvUDswpaon2jfRtJLmNsGPOuwQvLE8h4dv1i6xIag==",
#   "comment"=>{"user_id"=>"", "post_id"=>"13", "user_attributes"=>{"username"=>"test"}, "content"=>"testing"},
#   "commit"=>"Create Comment"}