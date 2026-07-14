class ClassExample
  def greeting
    puts 'Hello Users'
  end

  def self.greetings
    puts '
    hello'
  end
end

obj1 = ClassExample.new

puts
 obj1.methods.count