class Bob
  def hey(remark)
    return 'Whoa, chill out!' if shout?(remark)
    return 'Sure.' if question?(remark)
    return 'Fine. Be that way!' if silence?(remark)
    'Whatever.'
  end

  private

  def shout?(remark)
    remark.upper? && remark.match(/[a-zA-Z]/)
  end

  def question?(remark)
    remark[-1] == '?'
  end

  def silence?(remark)
    remark.gsub(/\s+/, '').empty?
  end
end

class String
  def upper?
    fail ArgumentError, 'input must be a string' unless self.class == String
    self == self.upcase
  end
end
