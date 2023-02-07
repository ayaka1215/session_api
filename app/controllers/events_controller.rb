class EventsController < ApplicationController
    def index
		events = Event.all
        render json: blogs
    end
end
