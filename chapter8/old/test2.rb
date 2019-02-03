module Say
  def world
    puts "world"
  end
end

Say::world

__END__

class Hello
  include Say
  def test
    Say::world
  end
end

Hello.new.test

h = Hello.new

__END__
module Kernel
  def p
  end
end

class Object
  include Kernel
end

main = Object.new

main.p
