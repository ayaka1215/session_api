class EventsController < ApplicationController
    before_action :set_target_event, only: %i[show update destroy]
    def index
		events = Event.all.order(date: "ASC")
        render json: events
    end

    def create
        Event.create!(event_params)
        head :created
    end

    def show
        render json: event
    end

    def update
        event.update!(event_params)
        head :ok
    end

    def destroy
        event.destroy
        head :ok
    end

    private
    def event_params
        params.require(:event).permit(:title, :content, :date, :start_time, :end_time, :place, :image)
    end

    def set_target_event
        event = Event.find(params[:id])
    end
end
