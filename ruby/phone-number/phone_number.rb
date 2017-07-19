class PhoneNumber
  def self.clean(number)
    number.gsub!(/\D/, '')
    if number.length == 11 && number[0] == "1"
      number = number[1..10]
    end
    if number.length == 10 &&
      number[0].match(/[2-9]/) && number[3].match(/[2-9]/)
        number
    else
      nil
    end
  end
end

module BookKeeping
  VERSION = 2
end
