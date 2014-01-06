require "spec_helper"

describe Option do
  it "should be invalid if description is blank" do
    current_scene = Scene.new
    forward_scene = Scene.new
    option = Option.new(current_scene: current_scene, forward_scene: forward_scene)
    option.invalid?.should be_true
  end

  it "should be invalid if current_scene is blank" do
    forward_scene = Scene.new
    option = Option.new(description: 'option description', forward_scene: forward_scene)
    option.invalid?.should be_true
  end

  it "should be invalid if forward_scene is blank" do
    current_scene = Scene.new
    option = Option.new(current_scene: current_scene, description: "option description")
    option.invalid?.should be_true
  end

  it "should be valid if description, current_scene and forward_scene is not blank" do
    game = Game.create(description: "game description")

    current_scene = Scene.create(description: "first scene", game: game)
    forward_scene = Scene.create(description: "second scene", game: game)
    option = Option.new(description: "option description", current_scene: current_scene, forward_scene: forward_scene)
    option.valid?.should be_true
  end

end
