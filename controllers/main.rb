# -*- coding: utf-8 -*-
get '/' do
  @count = Omikuji.all.count
  @last = Omikuji.all.desc(:time).limit(1).first.time
  @count_daikichi = Omikuji.where(:result => '大吉').count
  @count_kichi = Omikuji.where(:result => /吉/).count
  @latests = Omikuji.all.desc(:time).limit(5)

  @title = @@conf['title']
  haml :index
end

get '/omikuji.json' do
  content_type = 'application/json'
  arr = ['大吉', '中吉', '小吉', 'マジキチ', '凶']

  o = Omikuji.new(:result => arr.choice)
  o.save!
  
  @mes = {
    :result => o.result,
    :time => o.time
  }.to_json
end
