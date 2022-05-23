require "rails_helper"

RSpec.describe Course, type: :model do
  context "validations tests" do
    it "ensures the name is present" do
      course = Course.new(volume: "Content of the volume")
      expect(course.name.present?).to eq(false)
    end

    it "ensures that name matches" do
      course = Course.new(name: "Name")
      expect(course.name).to eq("Name")
    end

    it "ensures the volume is present" do
      course = Course.new(name: "Name")
      expect(course.volume.present?).to eq(false)
    end

    it "ensures that volume matches" do
      course = Course.new(volume: "Content of the volume")
      expect(course.volume).to eq("Content of the volume")
    end       

    it "ensures the description_text is present" do
      course = Course.new(name: "Name")
      expect(course.description_text.present?).to eq(false)
    end

    it "ensures that description_text matches" do
      course = Course.new(description_text: "Description text")
      expect(course.description_text).to eq("Description text")
    end

    it "ensures the annotation is present" do
      course = Course.new(volume: "Content of the volume", name: "Name")
      expect(course.annotation.present?).to eq(false)
    end

    it "ensures that annotation matches" do
      course = Course.new(annotation: "Content of the annotation")
      expect(course.annotation).to eq("Content of the annotation")
    end    

    it "should be able to save course" do
      course = Course.new(name: "Name", volume: "Content of the body", annotation: "Annotation", description_text: "Description text")
      expect(course.save).to eq(true)
    end
  end
end
