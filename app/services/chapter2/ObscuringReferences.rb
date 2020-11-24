# ===========   # Page 26      ================
class ObscuringReferences
  #  require './app/services/chapter2/ObscuringReferences.rb'
  attr_reader :data
  def initialize(data)
    puts "YahooooooOOOO Call #{data}"
    @data = data
  end
  def diameters
   #   0 is rim, 1 is tire
    data.collect {|cell|
      cell[0] + (cell[1] * 2)}
  end
end

# Call it like this
# @data = [[622, 20], [622, 23], [559, 30], [559, 40]]
# ObscuringReferences.new(@data)
