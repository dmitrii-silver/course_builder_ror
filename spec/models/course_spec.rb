require "rails_helper"

RSpec.describe Course, type: :model do
  fixtures :courses
  context "validations tests" do
    it "is valid with proper attributes" do
      expect(courses(:course1)).to be_valid
    end

    it "ensures the name is present" do
      course = courses(:course2)
      expect(course.name.present?).to eq(false)
    end

    it "ensures that name matches" do
      course = courses(:course1)
      expect(course.name).to eq("Course")
    end

    it "ensures that data type of name matches" do
      course = courses(:course1)
      expect(course.name.class).to eq(String)
    end

    it "ensures the volume is present" do
      course = courses(:course2)
      expect(course.volume.present?).to eq(false)
    end

    it "ensures that volume matches" do
      course = courses(:course1)
      expect(course.volume).to eq("Volume")
    end

    it "ensures that data type of volume matches" do
      course = courses(:course1)
      expect(course.volume.class).to eq(String)
    end

    it "ensures the annotation is present" do
      course = courses(:course2)
      expect(course.annotation.present?).to eq(false)
    end

    it "ensures that annotation matches" do
      course = courses(:course1)
      expect(course.annotation).to eq("Annotation")
    end

    it "ensures that data type of annotation matches" do
      course = courses(:course1)
      expect(course.annotation.class).to eq(String)
    end

    it "ensures the description_text is present" do
      course = courses(:course2)
      expect(course.description_text.present?).to eq(false)
    end

    it "ensures that description_text matches" do
      course = courses(:course1)
      expect(course.description_text).to eq("Description text")
    end

    it "ensures that data type of description_text matches" do
      course = courses(:course1)
      expect(course.description_text.class).to eq(String)
    end    
  end
end
  