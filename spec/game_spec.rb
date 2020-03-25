require "spec_helper"
require_relative "../lib/game"

RSpec.describe Game do
  describe "#run" do
    it "displays an empty board" do
      empty_board = <<~SQUIGGLY_HEREDOC
           1  2  3
           __ __ __
        A |  |  |  |
          |__|__|__|
        B |  |  |  |
          |__|__|__|
        C |  |  |  |
          |__|__|__|
      SQUIGGLY_HEREDOC

      output = StringIO.new
      Game.run(output)

      expect(output.string).to eq(empty_board)
    end
  end
end
