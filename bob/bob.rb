class Bob
  def self.hey(remark)
    case
    when remark == "", remark.gsub!(/\s/, '') == ''
      return "Fine. Be that way!"
    when remark.match(/[[:lower:]]/) == nil && remark.match(/[[:upper:]]/) != nil
      return "Whoa, chill out!"
    when remark[-1] == "?"
      return "Sure."
    else
      return "Whatever."
    end
  end
end

module BookKeeping
  VERSION = 1
end
