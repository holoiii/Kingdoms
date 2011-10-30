require 'spec_helper'

describe UsersController do

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end

  describe "GET 'edit'" do
    it "should be successful when a user is logged in" do
      user = User.create(username: "test_user",
                         email: "test@example.com",
                         password: "password",
                         password_confirmation: "password")
      session = UserSession.create(login: user.username, password: user.password)
      get 'edit', id: user.to_param
      response.should be_success
    end
  end

  describe "POST 'create'" do
    it "should redirect to the user's campaign on successful create" do
      @params = {user:
                     {username: "test_user",
                      email: "test@example.com",
                      password: "password",
                      password_confirmation: "password"
                     }
                }
      post :create, @params
      user = User.last
      response.should redirect_to kingdom_path(user.kingdom)
    end

    it "should render the 'new' template on unsuccessful create" do
      post :create
      assert_template :new
    end
  end
end
