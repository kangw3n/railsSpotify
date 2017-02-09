require 'rest-client'

class ArtistController < ApplicationController
  def index
    @params = params[:id]
    @response = nil

    begin
      @artists = JSON.parse(RestClient.get 'https://api.spotify.com/v1/artists/' + @params)
    rescue RestClient::ExceptionWithResponse => e
      @error = e.response
    end

    begin
      @albumsStr = RestClient.get 'https://api.spotify.com/v1/artists/' + @params + '/albums'
      @albums = JSON.parse(@albumsStr)
      @albumItems = @albums['items']
    rescue RestClient::ExceptionWithResponse => e
      @error = e.response
    end


  end
end
