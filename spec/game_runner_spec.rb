require "spec_helper"
require_relative "../game_runner"

RSpec.describe "GameRunner" do
  describe "#run" do
    it "displays an empty board" do
      BOARD = " __ __ __\n|  |  |  |\n|__|__|__|\n|  |  |  |\n|__|__|__|\n|  |  |  |\n|__|__|__|\n"
      io = instantiate_stdout

      GameRunner.run
      io.rewind

      expect(io.read).to eq(BOARD)
    end
  end

  def instantiate_stdout
    io = StringIO.new("")
    $stdout = io
    io
  end
end
