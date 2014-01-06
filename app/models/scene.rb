class Scene < ActiveRecord::Base
  validates :description, presence: true
  validates :game_id, presence: true
  belongs_to :game
end
