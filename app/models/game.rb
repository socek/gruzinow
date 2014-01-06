class Game < ActiveRecord::Base
  validates :description, presence: true

  has_many :scenes

  def first_scene
    scenes.where(status: "first").first
  end
end
