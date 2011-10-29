require 'spec_helper'

describe User do
  context "Validation" do
    it "should create a user with valid attributes" do
      user = User.create(username: "test_user", 
                         email: "test@example.com", 
                         password: "password", 
                         password_confirmation: "password")
      user.errors.messages.should be_empty  
    end
    
    it "should not create a user with invalid attributes" do
      user = User.create(username: "test_user", 
                         email: "test@example.com", 
                         password: "password", 
                         password_confirmation: "badpass")
      user.errors.messages.should_not be_empty
    end
  end
  context "Associations" do
    it "should create a kingdom for the user" do
      user = User.create(username: "test_user",
                         email: "test@example.com",
                         password: "password",
                         password_confirmation: "password")
      user.kingdom.should_not be_nil
    end
  end
end
