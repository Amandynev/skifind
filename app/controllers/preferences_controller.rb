class PreferencesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def new
    @preference = Preference.new
  end

  def create
    @preference = Preference.new(preference_params)
    if current_user.preference
      current_user.preference.destroy
    end
    @preference.matchable = current_user
    if @preference.save
      redirect_to resorts_path, notice: 'preference was successfully created.'
    else
      render :new
    end
  end

  def preference_params
    params.require(:preference).permit(:visitor_name, :roommate, :budget, :day_activities, :biological_clock, :accommodation, :spot, :night_activities, :expectations, :kilometers, :geocation, :longitude, :latitude)
  end
end
