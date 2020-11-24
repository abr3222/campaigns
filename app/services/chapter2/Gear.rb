class Gear
  attr_reader :chainring, :cog, :wheel

  def initialize(chainring, cog, wheel=nil)
    @chainring = chainring
    @cog = cog
    @wheel = wheel
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * wheel.diameter
  end

end

# ======================================= Page #32 =================================================
=begin
class Gear
  attr_reader :chainring, :cog, :wheel

  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog = cog
    @wheel = Wheel.new(rim, tire)
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * wheel.diameter
  end

  Wheel = Struct.new(:rim, :tire) do
    def diameter
      rim + (tire * 2)
    end
  end

end
=end
# ======================================= =================================================
=begin
class Gear
  attr_reader :chainring, :cog

  # Gear Inches Function Sub Divided into Multiple
  # def gear_inches
  #   # tire goes around rim twice for diameter
  #   ratio * (rim + (tire * 2))
  # end

  def gear_inches
    ratio * diameter
  end
  def diameter
    rim + (tire * 2)
  end

  def initialize(chainring, cog)
    @chainring = chainring
    @cog = cog
  end

  def ratio
    @chainring / @cog.to_f
    # <-- road to ruin
  end
end
=end
# ===============================================================================================
# Have to Understand benifit (attr_reader) of default implementation via attr_reader
# def cog
#   @cog
# end

=begin
# ===========   # Page 20        ================
class Gear
  attr_reader :chainring, :cog, :rim, :tire

  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog = cog
    @rim = rim
    @tire = tire
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    # tire goes around rim twice for diameter
    ratio * (rim + (tire * 2))
  end

end

puts Gear.new(52, 11, 26, 1.5).gear_inches
# -> 137.090909090909
puts Gear.new(52, 11, 24, 1.25).gear_inches
# -> 125.272727272727
=end

=begin
                          ===========   # Page 19        ================
class Gear
  attr_reader :chainring, :cog
  def initialize(chainring, cog)
    @chainring = chainring
    @cog = cog
  end
  def ratio
    chainring / cog.to_f
  end
end

# When Call from console or Some other Palace User this to Required
# or Put in the Application.rb file to To load at Run time
# require './app/services/chapter2/Gear.rb'

puts Gear.new(52, 11).ratio
puts Gear.new(30, 27).ratio
# -> 4.72727272727273
# -> 1.11111111111111

=end