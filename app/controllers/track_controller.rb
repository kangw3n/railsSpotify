require 'rest-client'

class TrackController < ApplicationController
  def index
    @params = params[:id]
    @response = nil

    begin
      @response = JSON.parse(RestClient.get 'https://api.spotify.com/v1/tracks/' + @params)
      @images = @response['album']['images'][0]['url']
      @artists = @response['artists']
    rescue RestClient::ExceptionWithResponse => e
      @error = e.response
    end


  end
end
