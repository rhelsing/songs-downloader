#!/usr/bin/env ruby

require 'nokogiri'
require 'open-uri'

album = ARGV[0]
album = album.downcase.tr(" ", "+")
puts "http://www.amazon.com/s/ref=nb_sb_noss_1?url=search-alias%3Daps&field-keywords=#{album}"
doc = Nokogiri::HTML(open("http://www.amazon.com/s/ref=nb_sb_noss_1?url=search-alias%3Daps&field-keywords=#{album}+album", read_timeout: 200000))
artist = doc.css("span.med a").first.content
puts artist
album_url = doc.css("h3.newaps a").first['href']
puts album_url
album_doc = Nokogiri::HTML(open(album_url, read_timeout: 200000))
puts album_doc
album_doc.css("div#musicTracksFeature td").each do |track|
	track_name = track.content[5..-1].strip
	puts track_name
	string_to_run = "song '#{track_name} #{artist}'"
	did_it_run_ok = system(string_to_run)
	puts did_it_run_ok
end