class ConversationsController < ApplicationController
  before_action :set_conversation, only: [:show, :update, :destroy]
  before_action :authenticate
  # GET /conversations
  # GET /conversations.json
  def index
    @conversations = @current_user.conversations
    @not_viewed = 0
    @conversations.each do |c|
      @not_viewed += c.how_many_not_viewed(@current_user) unless c.how_many_not_viewed(@current_user) == nil
    end
    @current_user
  end
  # GET /conversations/1
  # GET /conversations/1.json
  def show
    @messages = @conversation.messages.sort_by(&:updated_at)
    @messages.each do |m|
      (m[:viewed] = true) && m.save if m.viewed == false && @current_user.id != m.author
    end
  end
  # POST /conversations
  # POST /conversations.json
  def total_messages_not_viewed
    @conversations = @current_user.conversations
    @not_viewed = 0
    @conversations.each do |c|
      @not_viewed += c.how_many_not_viewed(@current_user) unless c.how_many_not_viewed(@current_user) == nil
    end
  end
  def create
    @conversation = Conversation.new(conversation_params)

    unless @conversation.save
      render json: @conversation.errors, status: :unprocessable_entity
    end
    @conversation
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
      params.require(:conversation).permit(:event_id, :sender_id, :recipient_id, :not_viewed)
    end
end
