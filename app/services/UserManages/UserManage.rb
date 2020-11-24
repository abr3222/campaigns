class UserManage
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

puts UserManage.new(52, 11).ratio
puts UserManage.new(30, 27).ratio
# -> 4.72727272727273
# -> 1.11111111111111
