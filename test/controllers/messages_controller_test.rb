require 'test_helper'

class MessagesControllerTest < ActionController::TestCase
  setup do
    @message = messages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:messages)
  end

  test "should create message" do
    assert_difference('Message.count') do
      post :create, message: { event_id: @message.event_id, message: @message.message, searcher_id: @message.searcher_id, user_id: @message.user_id, viewed: @message.viewed }
    end

    assert_response 201
  end

  test "should show message" do
    get :show, id: @message
    assert_response :success
  end

  test "should update message" do
    put :update, id: @message, message: { event_id: @message.event_id, message: @message.message, searcher_id: @message.searcher_id, user_id: @message.user_id, viewed: @message.viewed }
    assert_response 204
  end

  test "should destroy message" do
    assert_difference('Message.count', -1) do
      delete :destroy, id: @message
    end

    assert_response 204
  end
end
