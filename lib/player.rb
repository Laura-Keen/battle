require 'game'

class Player
  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = 60
  end

  def hp_control
    @hp -= 10
  end

end
