require "spec_helper"
require_relative "../lib/coordinates"

RSpec.describe Coordinates do
  describe "valid?" do
    it "returns false when row is not valid" do
      input = "d1"

      coordinates = Coordinates.new(input)

      expect(coordinates.valid?).to be false
    end

    it "returns false when column is not valid" do
      input = "a4"

      coordinates = Coordinates.new(input)

      expect(coordinates.valid?).to be false
    end

    it "returns true when row and column are valid" do
      input = "A3"

      coordinates = Coordinates.new(input)

      expect(coordinates.valid?).to be true
    end
  end
end
