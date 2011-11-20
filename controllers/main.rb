# -*- coding: utf-8 -*-
get '/' do
  @title = @@conf['title']
  haml :index
end

get '/omikuji.json' do
  content_type = 'application/json'
  arr = ['大吉', '中吉', '小吉', 'マジキチ', '凶']
  @mes = {
    :result => arr.choice,
    :time => Time.now.to_s
  }.to_json
end
