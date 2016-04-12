require 'test_helper'

class ConversationsControllerTest < ActionController::TestCase
  setup do
    @conversation = conversations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:conversations)
  end

  test "should create conversation" do
    assert_difference('Conversation.count') do
      post :create, conversation: { event_id: @conversation.event_id, recipient_id: @conversation.recipient_id, sender_id: @conversation.sender_id }
    end

    assert_response 201
  end

  test "should show conversation" do
    get :show, id: @conversation
    assert_response :success
  end

  test "should update conversation" do
    put :update, id: @conversation, conversation: { event_id: @conversation.event_id, recipient_id: @conversation.recipient_id, sender_id: @conversation.sender_id }
    assert_response 204
  end

  test "should destroy conversation" do
    assert_difference('Conversation.count', -1) do
      delete :destroy, id: @conversation
    end

    assert_response 204
  end
end
