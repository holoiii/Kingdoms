require 'spec_helper'

describe UserSessionsController do
  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end

  describe "POST 'create'" do
    before do
      activate_authlogic
    end

    it "should redirect to the user's kingdom on successful login" do
      user = User.create!(username: "test_user",
                         email: "test@example.com",
                         password: "password",
                         password_confirmation: "password")
      post :create, :user_session => {username: user.username, password: user.password}
      response.should redirect_to kingdom_path(user.kingdom)
    end

    it "should render the 'new' template on unsuccessful login" do
      post :create
      assert_template :new
    end
  end
end
