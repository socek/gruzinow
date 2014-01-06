class Option < ActiveRecord::Base
  validates :description, presence: true
  validates :current_scene_id, presence: true
  validates :forward_scene_id, presence: true
  belongs_to :current_scene, class_name: "Scene"
  belongs_to :forward_scene, class_name: "Scene"
end
