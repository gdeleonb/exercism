class Robot
  LETTER_BANK = [*'A'..'Z']
  NUMBER_BANK = [*'0'..'9']

  def initialize
    letters = Array.new(2){ LETTER_BANK.sample }.join
    numbers = Array.new(3){ NUMBER_BANK.sample }.join
    @name = letters + numbers
  end

  def name
    @name
  end

  def reset
    initialize
  end
end
