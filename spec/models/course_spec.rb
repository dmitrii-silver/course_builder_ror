require "rails_helper"

RSpec.describe Course, type: :model do
  context "validations tests" do
    it "ensures the title is present" do
      course = Course.new(body: "Content of the body")
      expect(course.valid?).to eq(false)
    end

    it "ensures the body is present" do
      course = Course.new(title: "Title")
      expect(course.valid?).to eq(false)
    end

    it "ensures the article is active by default" do
      course = Course.new(body: "Content of the body", title: "Title")
      expect(course.active?).to eq(true)
    end

    it "should be able to save article" do
      course = Course.new(body: "Content of the body", title: "Title")
      expect(course.save).to eq(true)
    end
  end

  context "scopes tests" do

  end
end
