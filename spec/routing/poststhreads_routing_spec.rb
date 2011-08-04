require "spec_helper"

describe PoststhreadsController do
  describe "routing" do

    it "routes to #index" do
      get("/poststhreads").should route_to("poststhreads#index")
    end

    it "routes to #new" do
      get("/poststhreads/new").should route_to("poststhreads#new")
    end

    it "routes to #show" do
      get("/poststhreads/1").should route_to("poststhreads#show", :id => "1")
    end

    it "routes to #edit" do
      get("/poststhreads/1/edit").should route_to("poststhreads#edit", :id => "1")
    end

    it "routes to #create" do
      post("/poststhreads").should route_to("poststhreads#create")
    end

    it "routes to #update" do
      put("/poststhreads/1").should route_to("poststhreads#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/poststhreads/1").should route_to("poststhreads#destroy", :id => "1")
    end

  end
end
