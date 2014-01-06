require "spec_helper"

describe GamesController, type: :controller do
  it "GET :index renders :index" do
    get :index
    assert_template :index
  end
end
