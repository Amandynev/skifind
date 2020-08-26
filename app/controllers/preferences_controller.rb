class PreferencesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def new
    @preference = Preference.new
  end

  def create
    @preference = Preference.new(preference_params)
    if @preference.save
      redirect_to root_path, notice: 'preference was successfully created.'
    else
      render :new
    end
  end

  def preference_params
    params.require(:preference).permit()
  end
end