require "spec_helper"

describe GamesController, type: :controller do
  it "GET :index renders :index" do
    get :index
    assert_template :index
  end

  it "GET :show renders :show" do
    game = Game.create(description: "My game")
    get :show, id: game.id
    assert_template :show
  end
end
