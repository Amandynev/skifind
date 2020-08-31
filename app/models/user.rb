class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :photo

  has_one :preference, as: :matchable# Can be changed to has_many..

  def top_resorts
    Resort.all.joins(:preference)
          .map { |resort| [resort, self.preference.score(resort.preference)] }
          .sort_by
          .first(3)
          # 3 premier
  end
end
