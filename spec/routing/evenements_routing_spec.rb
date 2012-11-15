require "spec_helper"

describe EvenementsController do
  describe "routing" do

    it "routes to #index" do
      get("/evenements").should route_to("evenements#index")
    end

    it "routes to #new" do
      get("/evenements/new").should route_to("evenements#new")
    end

    it "routes to #show" do
      get("/evenements/1").should route_to("evenements#show", :id => "1")
    end

    it "routes to #edit" do
      get("/evenements/1/edit").should route_to("evenements#edit", :id => "1")
    end

    it "routes to #create" do
      post("/evenements").should route_to("evenements#create")
    end

    it "routes to #update" do
      put("/evenements/1").should route_to("evenements#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/evenements/1").should route_to("evenements#destroy", :id => "1")
    end

  end
end
