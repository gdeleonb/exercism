class RunLengthEncoding
  def self.encode(input)
    strArray = input.chars
    len = strArray.length
    index = 0
    output = ''

    while index < len
      letter = strArray[index]
      reps = countRepeats(letter, strArray[(index + 1)..-1]) + 1
      if reps > 1
        output << reps.to_s
      end
      output << letter
      index += reps
    end

    return output
  end

  def self.countRepeats(letter, strArray)
    index = 0
    while strArray[index] == letter
      index += 1
    end
    return index
  end

  def self.decode(inputs)
    strArray = inputs.chars
    length = strArray.length
    index = 0
    repeats = ''
    output = ''

    while index < length
      while strArray[index].match(/\d/)
        repeats << strArray[index]
        index += 1
      end
      output << strArray[index] * (repeats == '' ? 1 : repeats.to_i)
      repeats = ''
      index += 1
    end
    return output
  end
end

module BookKeeping
  VERSION = 3
end
