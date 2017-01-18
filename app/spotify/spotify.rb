require 'pp'
require 'rspotify'
require 'rest-client'
require 'base64'
require 'open-uri'

class Spotify
  API_URI       = 'https://api.spotify.com/v1/'
  AUTHORIZE_URI = 'https://accounts.spotify.com/authorize'
  TOKEN_URI     = 'https://accounts.spotify.com/api/token'
  PLAYLIST_URI  = 'https://api.spotify.com/v1/users/reddify_bot/playlists/1fSAE2HE92R8Fb05FprvbW/tracks'

  def initialize(crawl_results)
    @tracks = Array.new()
    # auth = RSpotify.authenticate('reddify_bot', '5wMSNtDvckaH')
    # @reddify_bot = RSpotify::User.find('reddify_bot')
    # puts auth
    get_tracks(crawl_results)
  end

  def get_tracks(songs)
    songs.each { |track|
      puts "Finding Track: #{track[:track]} by #{track[:artist]}"
      response = RSpotify::Track.search(track[:track], market: 'US');

      # HOLY FUCK - I WROTE SOME REAL RUBY
      filtered = response.select { |res| res.artists.first.name == track[:artist] }
      @tracks.push(CGI.escape(filtered.first.uri))
    }

    build_playlist
  end

  def build_playlist

    # https://accounts.spotify.com/authorize?client_id=&response_type=code&redirect_uri=http://localhost

    # Authorize the user
    # authorization = Base64.strict_encode64 ":"
    # response = RestClient.get(AUTHORIZE_URI, { client_id: '', response_type: 'code', redirect_uri: 'http://localhost' } )
    # # response = RestClient.post(TOKEN_URI, { grant_type: 'client_credentials' }, { 'Authorization' => "Basic #{authorization}" } )
    #
    # pp response
    # @access_token = JSON.parse(response)['access_token']
    #
    # puts @access_token
    #
    track_uris = nil
    # # if @tracks.first.is_a? String
    # #   track_uris = @tracks.join(',')
    # # else
    # #   track_uris = @tracks.map(&:uri).join(',')
    # # end
    #
    track_uris = @tracks.join(',')
    #
    puts track_uris
    #

    myObj = exec(`open https://accounts.spotify.com/authorize?client_id=&response_type=code&redirect_uri=http://localhost`)
    puts myObj

    playlist_response = RestClient::Request.new({
      method: :post,
      url: PLAYLIST_URI,
      payload: { 'uris' => track_uris },
      headers: { 'Authorization' => "Bearer #{@code}", content_type: :json }
    }).execute { |response, request, result|
      case response.code
      when 403
        [ :error, response.to_str ]
      else
        fail "Invalid response #{response.to_str} received."
      end
    }

    puts playlist_response
    #
    # # playlist_response = RestClient.post PLAYLIST_URI + '?uris=' + track_uris, Authorization: "Bearer #{@access_token}", Content-Type: 'application/json'
    # # playlist_response = RestClient.put(PLAYLIST_URI, { uris: @tracks }, { 'Authorization' => "Bearer #{@access_token}", 'Content-Type' => "application/json" } )
    # puts playlist_response
    #
    # # @client_id, @client_secret = client_id, client_secret
    # #  request_body = { grant_type: 'client_credentials' }
    # #  response = RestClient.post(TOKEN_URI, request_body, auth_header)
    # #  @client_token = JSON.parse(response)['access_token']
    # # # token_resource = RestClient::Resource.new(token_url, :headers => { :Authorization => auth });
    # # playlist = RestClient::Resource.new(playlist_url, :headers => { :Authorization => auth })
    # # response = RestClient::Request.execute( :method => :post, :url => token_url, :headers => { :Authorization => auth } )
    # # pp response
    # # response = playlist.post(@tracks);
    # # puts response
    # # playlist_resource = RestClient::Resource.new(playlist_url, :)
    # # response = @resource.post('https://api.spotify.com/v1/users/reddify_bot/playlists/1fSAE2HE92R8Fb05FprvbW/tracks', )
    #
    # # client = RestClient.get 'https://accounts.spotify.com/authorize?client_id=&response_type=code&redirect_uri=http://localhost&scope=playlist-modify-public%20playlist-modify-private'
    # # client = RestClient.get(url, headers={})
    #
    # # playlist.add_tracks!(@tracks)
    # # puts playlist
    # # playlist.add_tracks!(@tracks)
    # # playlist.replace_tracks!(@tracks)
  end
end
