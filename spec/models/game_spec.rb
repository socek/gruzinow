require "spec_helper"

describe Game do
  it { should have_many :scenes}

  it "should be invalid if description is blank" do
    game = Game.new
    game.invalid?.should be_true
  end

  it "should be valid if description is not blank" do
    game = Game.new(description: "some text")
    game.valid?.should be_true
  end

  it "#first_scene finds scene marked as first" do
    game = Game.create(description: "YOLO")
    scene = Scene.create(description: "first", status: "first", game: game)
    Scene.create(description: "not first", game: game)
    game.first_scene.should == scene
  end
end
