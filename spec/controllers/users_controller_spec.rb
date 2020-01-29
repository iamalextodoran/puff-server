require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #index" do
    it "returns successful response" do
      get :index
      expect(response.status).to eq(200)
    end
  end

  describe "GET #show" do
    it "returns successful response" do
      user = User.create!(full_name: "Alex", picture: "sucar.png", danger: 1000, dark_mode: true)
      get :show, params: {id: user.to_param}
      expect(response.status).to eq(200)
    end
  end

end
