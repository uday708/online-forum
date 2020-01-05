require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  def setup
    @user = create(:user)
    sign_in @user
  end

  def test_create_post
    assert_difference ['Post.count'], 1 do
      post :create, params: {post: {title: "why do we fall?", content: "So we can learn to pick ourselves up" }}
      assert_response :found
    end
  end
end
