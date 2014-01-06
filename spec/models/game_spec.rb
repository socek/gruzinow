require "spec_helper"

describe Game do
  it "should be invalid if description is blank" do
    game = Game.new
    game.invalid?.should be_true
  end

  it "should be valid if description is not blank" do
    game = Game.new(description: "some text")
    game.valid?.should be_true
  end
end
