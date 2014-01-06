class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find_by(id: id_param)
    if scene_id
      @scene = @game.scenes.find_by(id: scene_id)
    else
      @scene = @game.first_scene
    end
  end

  private

  def scene_id
    params.permit(:scene_id)[:scene_id]
  end

  def id_param
    params.require(:id)
  end
end
