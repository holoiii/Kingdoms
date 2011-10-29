require "spec_helper"

describe KingdomsController do
  describe "routing" do

    it "routes to #index" do
      get("/kingdoms").should route_to("kingdoms#index")
    end

    it "routes to #new" do
      get("/kingdoms/new").should route_to("kingdoms#new")
    end

    it "routes to #show" do
      get("/kingdoms/1").should route_to("kingdoms#show", :id => "1")
    end

    it "routes to #edit" do
      get("/kingdoms/1/edit").should route_to("kingdoms#edit", :id => "1")
    end

    it "routes to #create" do
      post("/kingdoms").should route_to("kingdoms#create")
    end

    it "routes to #update" do
      put("/kingdoms/1").should route_to("kingdoms#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/kingdoms/1").should route_to("kingdoms#destroy", :id => "1")
    end

  end
end
