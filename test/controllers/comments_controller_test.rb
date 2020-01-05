require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  def setup
    @user = create(:user)
    @post = create(:post, user: @user)
    sign_in @user
  end

  def test_comment_on_post
    assert_difference ['Comment.count'], 1 do
      post :create, params: {comment: {message: "This is good post!"}, post_id: @post.id }
      assert_response :found
    end
  end
end
