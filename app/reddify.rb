require_relative 'reddit/reddit'

class Reddify
  RADD = nil
  SPOT = nil
  def initialize()
    puts 'Reddify:INITIALIZE'
    Raddit.new
  end
end
