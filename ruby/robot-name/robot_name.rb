class Robot
  def initialize
    @name = Array.new(2){ [*'A'..'Z'].sample }.join + Array.new(3){ [*'0'..'9'].sample }.join
  end

  def name
    @name
  end

  def reset
    initialize
  end
end
