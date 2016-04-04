require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { born_on: @user.born_on, email: @user.email, name: @user.name, password_digest: @user.password_digest, photo_url: @user.photo_url, summary: @user.summary, thumbs_down: @user.thumbs_down, thumbs_up: @user.thumbs_up }
    end

    assert_response 201
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should update user" do
    put :update, id: @user, user: { born_on: @user.born_on, email: @user.email, name: @user.name, password_digest: @user.password_digest, photo_url: @user.photo_url, summary: @user.summary, thumbs_down: @user.thumbs_down, thumbs_up: @user.thumbs_up }
    assert_response 204
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_response 204
  end
end
