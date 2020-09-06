class PreferencesController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @preference = Preference.new
  end

  def create
    if current_user
      set_pref(current_user)
    elsif session[:user_id]
      user = User.find_by_id(session[:user_id])
      preference = user.preference
      preference.update(preference_params)
    else
      @user = User.create(email: "#{SecureRandom.uuid}@skifind.com", password: "azerty")
      session[:user_id] = user.id
      set_pref(user)
    end
  end


# 1 vérifier si un user est logué
# 2 si oui enregistrer les params dans la DB
# 3 si non vérifier dans les cookies si il y a un user enregistré
# 4 si oui destroy les cookies
# 5 fabriquer un nouvel user
# 6 enregistrer les preferences dans le user

  private

  def preference_params
    params.require(:preference).permit(:visitor_name, :roommate, :budget, :day_activities, :biological_clock, :accommodation, :spot, :night_activities, :expectations, :kilometers, :geocation, :longitude, :latitude)
  end

  def set_pref(user)
    @preference = Preference.new(preference_params)

      if user.preference
        user.preference.destroy
      end
      @preference.matchable = user
      if @preference.save
        redirect_to resorts_path, notice: 'preference was successfully created.'
      else
        render :new
      end
  end
end



# @preference = Preference.new(preference_params)

#       if current_user.preference
#         current_user.preference.destroy
#       end
#       @preference.matchable = current_user
#       if @preference.save
#         redirect_to resorts_path, notice: 'preference was successfully created.'
#       else
#         render :new
#       end
