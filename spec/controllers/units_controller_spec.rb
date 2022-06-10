require "rails_helper"
RSpec.describe UnitsController, type: :controller do
  describe "new action" do
    context "GET #new" do

      it "is valid with complete data" do
        course = Unit.new(
          name: "Unit",
          position: "Position",
          body: "Unit1"
          )
        expect(course.valid?).to be true
      end
      
      it "is invalid with incomplete data" do
        course = Unit.new(
          name: "Unit",
          position: nil,
          body: "Annotation"
          )
        expect(course.valid?).to be false
      end

      it "routes to the 'new' action" do
        expect({ get: "/courses/123/units/new" }).to route_to(
        controller: "units",
        action: "new",
        course_id: "123"
        )
      end
    end
  end

  describe "show action" do
    context "GET #show" do 
      it "routes to the 'show' action" do
        expect({ get: "/courses/123/units/456" }).to route_to(
        controller: "units",
        action: "show",
        course_id: "123",
        id: "456"
        )
      end
    end
  end

  describe "destroy action" do
    context "GET #destroy" do
      it "confirm the object was destroyed" do
        @unit = Unit.create(name: "Course", position: "3", body: "Text")
        @unit.destroy        
        expect(@unit.destroyed?).to be(true)
      end
    end
  end

  describe "update action" do
    context "GET #update" do
    let(:unit) { Unit.create(
      name: "Unit",
      position: "1",
      body: "Body"
      )
    }
      
      it "return the update object" do
        unit.update(
          name: "New Unit",
          position: "3",
          body: "New Body"
          )
        expect(unit.name).to eq("New Unit")
      end
    end
  end
end
