require 'net/http'
require 'uri'

class ChannelsController < ApplicationController
  # include Youtube

    def index
      # @movieId = Youtube.search_videoid
    end


    def create
      if @category == 'JPOP'
        @movieId = Youtube.search_videoid
        redirect_to("/channnels/index")
      end
    end

    def show

      @movieId = Youtube.search_videoid

      # url = "https://www.googleapis.com/youtube/v3/search?part=id&channelId=UCiX-HGeGIXJLIexjt1jEjWg&order=viewCount&type=playlist&maxResults=15&key=#{DEVELOPER_KEY}"
      #
      # result = Net::HTTP.get(URI.parse(url))
      # data = JSON.parse(result)
      # items = data["items"]
      #
      # @jpopId = items.map{ |item| item['id']['playlistId']}
    end
end
