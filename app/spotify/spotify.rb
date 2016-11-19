class Spotify
  TRACKS = ['https://open.spotify.com/track/1JyXEzDAzuGfeAFT4QLPh2', 'https://open.spotify.com/track/1jQn45kNhYtgwQWzjxbt4G', 'https://open.spotify.com/track/4G1mjYAyCRJwW9AZEaafKB', 'https://open.spotify.com/track/0CAkIqdfKNNWZRbtIquUpL', 'https://open.spotify.com/track/6m3ZWIXhjoV76syT1j2oE9']

  def initialize()
    puts 'Spotify:INITIALIZE'
  end

  def sort_tracks
    puts '---====||* SORTING TRACKS *||====---'
    songs = TRACKS.collect { |track|
      track.delete 'https://open.spotify.com/track/'
    }

    return songs
  end

  def get_tracks(tracks)
    puts '---====||* GETTING TRACKS *||====---'
    tracks.collect! { |track|
      puts "Finding Track: #{track}"
      puts RSpotify::Base.find(track, 'user')
    }
  end
end
