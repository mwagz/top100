require_relative 'reddit/reddit'
require_relative 'spotify/spotify'

class Reddify
  RADD = nil
  SPOT = nil
  def initialize()
    puts 'Reddify:INITIALIZE'
    Raddit.new
    Spotify.new
  end
end
