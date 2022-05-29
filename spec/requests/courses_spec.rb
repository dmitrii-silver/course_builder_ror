require 'rails_helper'

RSpec.describe "Courses", type: :routing do
  describe "GET /index" do
    it "routes /courses to the courses controller" do
      expect(get("/courses")).to route_to("courses#index")
    end
  end
end