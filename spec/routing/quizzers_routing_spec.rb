require "spec_helper"

describe QuizzersController do
  describe "routing" do

    it "routes to #index" do
      get("/quizzers").should route_to("quizzers#index")
    end

    it "routes to #new" do
      get("/quizzers/new").should route_to("quizzers#new")
    end

    it "routes to #show" do
      get("/quizzers/1").should route_to("quizzers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/quizzers/1/edit").should route_to("quizzers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/quizzers").should route_to("quizzers#create")
    end

    it "routes to #update" do
      put("/quizzers/1").should route_to("quizzers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/quizzers/1").should route_to("quizzers#destroy", :id => "1")
    end

  end
end
