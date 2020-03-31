require "spec_helper"
require_relative "../lib/coordinates"

RSpec.describe Coordinates do
  describe "valid?" do
    it "returns false when user entered row is below last row" do
      input = "d1"

      coordinates = Coordinates.new(input)

      expect(coordinates.valid?).to be false
    end

    it "returns false when user entered column is before first column" do
      input = "a0"

      coordinates = Coordinates.new(input)

      expect(coordinates.valid?).to be false
    end

    it "returns false when entered column is past last column" do
      input = "a4"

      coordinates = Coordinates.new(input)

      expect(coordinates.valid?).to be false
    end

    it "returns false when length of user input is greater than 2" do
      input = "a43"

      coordinates = Coordinates.new(input)

      expect(coordinates.valid?).to be false
    end

    it "returns false when length of user input is less than 2" do
      input = "a"

      coordinates = Coordinates.new(input)

      expect(coordinates.valid?).to be false
    end

    it "returns true when row and column are within bounds of column and rows" do
      input = "A3"

      coordinates = Coordinates.new(input)

      expect(coordinates.valid?).to be true
    end
  end
end
