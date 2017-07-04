class Fixnum
  def to_roman
    raise 'Only works on numbers between 1 and 3000!' if self <= 0 || self > 3000

    ints = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
    romNums = ["M","CM","D","CD","C","XC","L","XL","X","IX","V","IV","I"]
    string = ''
    remainder = self

    ints.zip(romNums).each do |int, romNum|
      quotient = remainder / int
      string += romNum * quotient
      remainder = remainder % int
    end

    string
  end
end
