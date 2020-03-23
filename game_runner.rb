class GameRunner
  def self.run(*args)
    GameRunner.new.run(*args)
  end

  def run(output)
    output.puts empty_board
  end

  def empty_board
    <<~SQUIGGLY_HEREDOC
       __ __ __
      |  |  |  |
      |__|__|__|
      |  |  |  |
      |__|__|__|
      |  |  |  |
      |__|__|__|
    SQUIGGLY_HEREDOC
  end
end

GameRunner.run(StringIO.new)
