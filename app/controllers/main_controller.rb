class MainController < ApplicationController
  def index
    @music_data = RestClient.get('https://itunes.apple.com/search', {
      params: {term: params[:searchterm]}
      })
    @music_data = JSON.parse(@music_data)['results']
  end
end
