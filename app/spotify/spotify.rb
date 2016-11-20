require 'pp'
require 'rspotify'

class Spotify
  def initialize(crawl_results)
    @tracks = Array.new()
    get_tracks(crawl_results)
  end

  def get_tracks(songs)
    songs.each { |track|
      puts "Finding Track: #{track[:track]} by #{track[:artist]}"
      response = RSpotify::Track.search(track[:track], market: 'US');

      # HOLY FUCK - I WROTE SOME REAL RUBY
      filtered = response.select { |res| res.artists.first.name == track[:artist] }
      @tracks.push(filtered.first.id) # This gives me just the ID of the Track Object
      # @tracks.push(filtered.first) # This gives me the actual Track instance.
    }

    # TODO: Delete this
    pp @tracks
  end

  def build_playlist

  end
end
