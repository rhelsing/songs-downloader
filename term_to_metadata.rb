#!/usr/bin/env ruby
require 'musicbrainz'
require "mp3info"
artist, title = ARGV[0].split("-")
file = ARGV[1].gsub(" ", "\\ ")
myfile = "/Users/ryanhelsing/Music/Library/#{file}.mp3"
puts myfile

MusicBrainz.configure do |c|
  # Application identity (required)
  c.app_name = "My Music App"
  c.app_version = "1.0"
  c.contact = "support@mymusicapp.com"

  # Cache config (optional)
  c.cache_path = "/tmp/musicbrainz-cache"
  c.perform_caching = true

  # Querying config (optional)
  c.query_interval = 1.2 # seconds
  c.tries_limit = 2
end
@suggestions = MusicBrainz::ReleaseGroup.search(artist, title)
puts @suggestions.first[:id]

Mp3Info.open(myfile) do |mp3|
  mp3.tag.title = @suggestions.first[:title]
  mp3.tag.artist = artist
end
#puts "www.youtube.com#{url}"
