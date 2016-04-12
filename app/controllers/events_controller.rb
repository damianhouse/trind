class EventsController < ApplicationController
  before_action :set_event, only: [:show, :update, :destroy]
  before_action :authenticate
  # GET /events
  # GET /events.json
  def index
    @events = Event.all
  end

  def memories
    @events = []
    poster = Event.where(user_id: @current_user.id)
    searcher = Event.where(searcher_id: @current_user.id)
    searcher.each do |s|
      @events << s
    end
    @events
    poster.each do |r|
      @events << r
    end
    @events.sort
    render json: @events
  end
  # GET /events/1
  # GET /events/1.json
  def show
    render json: @event
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    if @event.save
      render json: @event, status: :created, location: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    @event = Event.find(params[:id])

    if @event.update(event_params)
      head :no_content
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy

    head :no_content
  end

  private

    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:user_id, :searcher_id, :interests, :description, :location, :success)
    end
end
