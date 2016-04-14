class ConversationsController < ApplicationController
  before_action :set_conversation, only: [:show, :update, :destroy]
  before_action :authenticate
  # GET /conversations
  # GET /conversations.json
  def index
    @conversations = @current_user.conversations
    @current_user
  end

  # GET /conversations/1
  # GET /conversations/1.json
  def show
    render json: @conversation
  end

  # POST /conversations
  # POST /conversations.json
  def create
    @conversation = Conversation.new(conversation_params)

    if @conversation.save
      render json: @conversation, status: :created, location: @conversation
    else
      render json: @conversation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /conversations/1
  # PATCH/PUT /conversations/1.json
  def update
    @conversation = Conversation.find(params[:id])

    if @conversation.update(conversation_params)
      head :no_content
    else
      render json: @conversation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /conversations/1
  # DELETE /conversations/1.json
  def destroy
    @conversation.destroy

    head :no_content
  end

  private

    def set_conversation
      @conversation = Conversation.find(params[:id])
    end

    def conversation_params
      params.require(:conversation).permit(:event_id, :sender_id, :recipient_id)
    end
end
