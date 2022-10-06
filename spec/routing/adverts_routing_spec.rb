require "rails_helper"

RSpec.describe AdvertsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/adverts").to route_to("adverts#index")
    end

    it "routes to #show" do
      expect(get: "/adverts/1").to route_to("adverts#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/adverts").to route_to("adverts#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/adverts/1").to route_to("adverts#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/adverts/1").to route_to("adverts#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/adverts/1").to route_to("adverts#destroy", id: "1")
    end
  end
end
