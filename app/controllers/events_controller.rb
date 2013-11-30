class EventsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @events = Event.paginate(:page => params[:page]).order('created_at DESC')
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
     default_params.merge params.require(:event).permit(
       :entry, :entry_type, :hostname, :source_ip, :user
     )
    end

    # Set default params
    def default_params
      {entry_type: 'webui',
       user: current_user.email,
       hostname: 'webui',
       source_ip: 'webui'}
    end
end
