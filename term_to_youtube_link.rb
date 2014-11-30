#!/usr/bin/env ruby
require 'nokogiri'
require 'open-uri'
song = ARGV[0]
song = song.downcase.tr(" ", "+")
doc = Nokogiri::HTML(open("https://www.youtube.com/results?search_query=#{song}"))
#watch?v
url = doc.css("h3.yt-lockup-title a").first['href']
puts "http://www.youtube.com#{url}"
