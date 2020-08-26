class ResortsController < ApplicationController
    def index
        @resorts = Resort.all
    end

    def show
        @resort = Resort.new
        @resort = resort.find(params[:id])
        @activity = Activity.new
    end
end
