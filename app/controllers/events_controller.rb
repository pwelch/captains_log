class EventsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @events = Event.all
    respond_to do |format|
      format.html
      format.json { render json: @events }
    end
  end

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    redirect_to events_path
  end

  def update
    @event = Event.find(params[:id])

    if @event.update(params[:event].permit(:entry))
      redirect_to @event
    else
      render 'edit'
    end
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to @event
    else
      render 'new'
    end
  end

  private
    def event_params
      params.require(:event).permit(:entry)
    end
end
