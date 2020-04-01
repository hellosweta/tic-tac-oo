require_relative "coordinates.rb"

class Player
  attr_reader :interface, :coordinates

  def initialize(interface:)
    @interface = interface
  end

  def get_valid_move
    until valid_new_move?
      print_error
    end
  end

  private

  def valid_new_move?
    set_coordinates
    coordinates.valid?
  end

  def set_coordinates
    @coordinates = Coordinates.new(interface.read)
  end

  def print_error
    interface.print_error
  end
end
