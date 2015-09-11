class HelloWorld

  def self.hello(name = nil)
    if name == nil
      "Hello, World!"
    elsif name == ''
      "Hello, !"
    else
      "Hello, #{name}!"
    end
  end

end