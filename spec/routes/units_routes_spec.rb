require "rails_helper"

RSpec.describe UnitsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/courses/1/units").to route_to("units#index", course_id: "1")
    end

    it "routes to #show" do
      expect(get: "/courses/1/units/1").to route_to("units#show", course_id: "1", id: "1")
    end

    it "routes to #new" do
      expect(get: "/courses/1/units/new").to route_to("units#new", course_id: "1")
    end

    it "routes to #create" do
      expect(post: "/courses/1/units").to route_to("units#create", course_id: "1")
    end

    it "routes to #edit" do
      expect(get: "/courses/1/units/1/edit").to route_to("units#edit", course_id: "1", id: "1")
    end

    it "routes to #update" do
      expect(put: "/courses/1/units/1").to route_to("units#update", course_id: "1", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/courses/1/units/1").to route_to("units#destroy",course_id: "1",  id: "1")
    end
  end
end
