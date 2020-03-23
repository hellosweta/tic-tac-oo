require "spec_helper"
require_relative "../lib/game_runner"

RSpec.describe "GameRunner" do
  describe "#run" do
    it "displays an empty board" do
      empty_board = <<~SQUIGGLY_HEREDOC
         __ __ __
        |  |  |  |
        |__|__|__|
        |  |  |  |
        |__|__|__|
        |  |  |  |
        |__|__|__|
      SQUIGGLY_HEREDOC

      output = StringIO.new
      GameRunner.run(output)

      expect(output.string).to eq(empty_board)
    end
  end
end
