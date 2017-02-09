class TopTrackController < ApplicationController
  def index
    @params = params[:id]
    @response = nil

    begin
      @tracks = JSON.parse(RestClient.get 'https://api.spotify.com/v1/artists/' + @params + '/top-tracks?country=TW')
    rescue RestClient::ExceptionWithResponse => e
      @error = e.response
    end

    begin
      @albumsStr = RestClient.get 'https://api.spotify.com/v1/artists/' + @params
      @artist = JSON.parse(@albumsStr)
    rescue RestClient::ExceptionWithResponse => e
      @error = e.response
    end


  end
end
