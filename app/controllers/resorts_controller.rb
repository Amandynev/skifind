class ResortsController < ApplicationController
    skip_before_action :authenticate_user!, only: [ :index, :show ]
    before_action :set_resort, only: [ :show ]

    def index
        @resorts = Resort.all
    end

    def show
        @resort = Resort.new
        @resort = Resort.find(params[:id])
        @activity = Activity.new
        @markers = [{
        lat: @resort.latitude,
        lng: @resort.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { resort: @resort })
      }]
    end

    def set_resort
        @resort = Resort.find(params[:id])
    end

    def resort_params
        params.require(:resort).permit(:resort_name, :resort_addres, :resort_description, :visitor_name, :roommate, :budget,
        :day_activities, :biological_clock, :accommodation, :spot, :night_activities, :expectations, :geocation, :kilometers)
    end
end
