class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    self.characters.collect do |character|
      "#{charter.actor.first_name} #{charter.actor.last_name}"
    end
  end
end
