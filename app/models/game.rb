class Game < ActiveRecord::Base
  validates :description, presence: true
end
