require 'rails_helper'

RSpec.describe Unit, type: :model do
  fixtures :units
  context "validations tests" do
    it "is valid with proper attributes" do
      expect(units(:unit1)).to be_valid
    end

    it "ensures the name is present" do
      unit = units(:unit2)
      expect(unit.name.present?).to eq(false)
    end

    it "ensures that name matches" do
      unit = units(:unit1)
      expect(unit.name).to eq("Unit 1")
    end

    it "ensures the position is present" do
      unit = units(:unit2)
      expect(unit.position.present?).to eq(false)
    end

    it "ensures that position matches" do
      unit = units(:unit1)
      expect(unit.position).to eq(42)
    end

    it "ensures that data type matches" do
      unit = units(:unit1)
      expect(unit.position.class).to eq(Integer)
    end

    it "ensures the body is present" do
      unit = units(:unit2)
      expect(unit.body.present?).to eq(false)
    end

    it "ensures that body matches" do
      unit = units(:unit1)
      expect(unit.body).to eq("Body of Unit 1")
    end
  end
end
