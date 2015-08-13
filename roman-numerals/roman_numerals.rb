class Fixnum
  def to_roman
    ms  =  self          / 1000
    cs  = (self % 1000)  / 100
    xs  = (self % 100)   / 10
    is  = (self % 10)

    roman_num = 'M' * ms

    if cs == 9
      roman_num << 'CM'
    elsif cs == 4
      roman_num << 'CD'
    else
      roman_num << 'D' * (self % 1000 / 500)
      roman_num << 'C' * (self %  500 / 100)
    end

    if xs == 9
      roman_num << 'XC'
    elsif xs == 4
      roman_num << 'XL'
    else
      roman_num << 'L' * (self % 100 / 50)
      roman_num << 'X' * (self %  50 / 10)
    end

    if is == 9
      roman_num << 'IX'
    elsif is == 4
      roman_num << 'IV'
    else
      roman_num << 'V' * (self % 10 / 5)
      roman_num << 'I' * (self %  5 / 1)
    end
  end
end
