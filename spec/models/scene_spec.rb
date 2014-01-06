require "spec_helper"

describe Scene do
  it "should be invalid if description is blank" do
    game = Game.new
    scene = Scene.new(game: game)
    scene.invalid?.should be_true
  end

  it "should be valid if description is not blank" do
    game = Game.create(description: "game description")
    scene = Scene.new(description: "some text", game: game)
    scene.valid?.should be_true
  end

  it "should be invalid if games is blank" do
    scene = Scene.new(description: "some text")
    scene.invalid?.should be_true
  end

end
