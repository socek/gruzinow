class Scene < ActiveRecord::Base
  validates :description, presence: true
  validates :game_id, presence: true
  belongs_to :game
  has_many :options, foreign_key: :current_scene_id
end
