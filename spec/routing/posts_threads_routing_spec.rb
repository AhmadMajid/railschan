require "spec_helper"

describe PostsThreadsController do
  describe "routing" do

    it "routes to #index" do
      get("/posts_threads").should route_to("posts_threads#index")
    end

    it "routes to #new" do
      get("/posts_threads/new").should route_to("posts_threads#new")
    end

    it "routes to #show" do
      get("/posts_threads/1").should route_to("posts_threads#show", :id => "1")
    end

    it "routes to #edit" do
      get("/posts_threads/1/edit").should route_to("posts_threads#edit", :id => "1")
    end

    it "routes to #create" do
      post("/posts_threads").should route_to("posts_threads#create")
    end

    it "routes to #update" do
      put("/posts_threads/1").should route_to("posts_threads#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/posts_threads/1").should route_to("posts_threads#destroy", :id => "1")
    end

  end
end
