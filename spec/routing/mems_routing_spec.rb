require "spec_helper"

describe MemsController do
  describe "routing" do

    it "routes to #index" do
      get("/mems").should route_to("mems#index")
    end

    it "routes to #new" do
      get("/mems/new").should route_to("mems#new")
    end

    it "routes to #show" do
      get("/mems/1").should route_to("mems#show", :id => "1")
    end

    it "routes to #edit" do
      get("/mems/1/edit").should route_to("mems#edit", :id => "1")
    end

    it "routes to #create" do
      post("/mems").should route_to("mems#create")
    end

    it "routes to #update" do
      put("/mems/1").should route_to("mems#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/mems/1").should route_to("mems#destroy", :id => "1")
    end

  end
end
