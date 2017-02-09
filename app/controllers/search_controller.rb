class SearchController < ApplicationController
  def index
    @title = 'Need Music?'
    @title2 = 'Use Spotify to listen music!'
    @queryType = ['track', 'album', 'artist']
    @page = 'search'
  end
end
