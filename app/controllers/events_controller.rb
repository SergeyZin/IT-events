class EventsController < ApplicationController
	
	def index
		@events = Event.paginate(:page => params[:page], :per_page => 3).order('id DESC')
	end


	def show
		@event = Event.find(params[:id])	
	end


	private def event_params
		params.require(:event).permit(:name, :city, :address, 
									:description, :image, :date,
									:external_link, :organizer_link)
	end
	
end
