# ===========   # Page 28ex      ================
class RevealingReferences
  attr_reader :wheels


  def initialize(data)
    puts "Loaaaaded #{data}"

    @wheels = wheelify(data)
  end

  # Divide the Diameters Function into Two Level So it will not Repeat it
  # def diameters
  # wheels.collect {|wheel|
  # wheel.rim + (wheel.tire * 2)}
  # end

  # first - iterate over the array
  def diameters
    wheels.collect {|wheel| diameter(wheel)}
  end
  # second - calculate diameter of ONE wheel
  def diameter(wheel)
    wheel.rim + (wheel.tire * 2)
  end




  # ... now everyone can send rim/tire to wheel
  Wheel = Struct.new(:rim, :tire)

  def wheelify(data)
  data.collect {|cell|
     Wheel.new(cell[0], cell[1])}
  end

  # @data = [[622, 20], [622, 23], [559, 30], [559, 40]]
  # RevealingReferences.new(@data)

end