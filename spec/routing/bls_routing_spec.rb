require "spec_helper"

describe BlsController do
  describe "routing" do

    it "routes to #index" do
      get("/bls").should route_to("bls#index")
    end

    it "routes to #new" do
      get("/bls/new").should route_to("bls#new")
    end

    it "routes to #show" do
      get("/bls/1").should route_to("bls#show", :id => "1")
    end

    it "routes to #edit" do
      get("/bls/1/edit").should route_to("bls#edit", :id => "1")
    end

    it "routes to #create" do
      post("/bls").should route_to("bls#create")
    end

    it "routes to #update" do
      put("/bls/1").should route_to("bls#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/bls/1").should route_to("bls#destroy", :id => "1")
    end

  end
end
