class AlbumController < ApplicationController
  def index
    @params = params[:id]
    @response = nil

    begin
      @response = JSON.parse(RestClient.get 'https://api.spotify.com/v1/albums/' + @params)
    rescue RestClient::ExceptionWithResponse => e
      @error = e.response
    end


  end
end
