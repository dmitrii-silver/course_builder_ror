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
    end
  end
end
