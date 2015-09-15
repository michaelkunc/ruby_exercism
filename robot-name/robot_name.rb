class Robot

attr_reader :name

  def initialize
    set_name
  end

  def reset
    set_name
  end

  private

  def set_name
    name_components = [('AA'..'ZZ').to_a, (100..999).to_a]
    @name = name_components.reduce('') {|result, element| result << element.sample.to_s }
  end

end