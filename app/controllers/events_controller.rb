class EventsController < ApplicationController
    def index
		events = Event.all.order(date: "ASC")
        render json: events
    end

    def create
        Event.create!(event_params)
        head :created
    end

    def show
        event = Event.find(params[:id])
        render json: event
    end

    private
    def event_params
        params.require(:event).permit(:title, :content, :date, :start_time, :end_time, :place, :image)
    end
end
