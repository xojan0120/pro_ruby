class HelloWorld
  include Enumerable
  def sayHello
    puts "sayHello"
  end

  def each
    3.times { yield }
    yield
  end
end

hw = HelloWorld.new
hw.sayHello

hw.each do 
  puts 123
end

p hw.count
