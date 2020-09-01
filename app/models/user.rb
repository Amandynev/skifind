class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :photo

  has_one :preference, as: :matchable# Can be changed to has_many..

  def top_resorts
    Resort.all.joins(:preference)
          .map { |resort| [resort, preference.score(resort.preference)] } # [[#<Resort....>, 67], [......]
          .sort_by { |pair| - pair[1] } # Sorting DESC
          .first(3)

    # [ { resort: resort, score: 54 }, {....}, ......]      suggestion
  end
end
