module Youtube
  class << self #特異クラス方式。複数のメソッドを一度に定義する.def class_method のようにクラス名を書かずにインスタンスメソッドと同じようなメソッド定義を書いていきます。この間に書いたものはクラスメソッドとして定義される。
  extend ActiveSupport::Concern

  DEVELOPER_KEY = 'AIzaSyB-jBXW-XxoC8RceDByu7u--0yvTzkCqnE'

  def search_videoid
    url = "https://www.googleapis.com/youtube/v3/search?part=id&channelId=UCiX-HGeGIXJLIexjt1jEjWg&order=viewCount&maxResults=15&key=#{DEVELOPER_KEY}"

    result = Net::HTTP.get(URI.parse(url))

    data = JSON.parse(result)

    items = data["items"]

    movieId = items.map{ |item| item['id']['videoId'] }

    # ========================================-
    # map→要素の数だけ繰り返しブロックを実行し、ブロックの戻り値を集めた配列を作成して返す。

    # items.each do |n|
    #   @movieId = n["id"]["videoId"]
    # end
    # これだと@movieIdは上書きされる。
    # でもコンソールは1回ずつ出るから5つ出てくる
    # ========================================-
  end
end

  # module_function :search_videoid
  # →この場合は、コントローラーに「include Youtube」が必要

end
