# CLI Song Downloader Work in progress

Downloads songs from youtube, imports proper meta-data and album art, adds to iTunes automatically. Requires some configuration at the moment but it's worth it.

* usage:

```command
song "bonobo kiara"
songs "taylor swift"
album "in rainbows"
soundslike "flying lotus"
```

* song "title and artist" :: downloads an individual track
* songs "artist" :: downloads the top 10 (default) tracks for an artist (based on last.fm for the last 6 months)
	* specify a different amount of songs to download with:: songs "artist name" [number]
* album "title" :: downloads album. album artist is optional but necessary to differentiate albums with similar names.
* soundslike "artist" :: downloads top songs of similar artists
  * specify amount of similar artists and amount of songs for each
  * soundslike "U2" 6 10 :: will download the top 10 songs for the 6 most similar artists = 60 songs!

## Installation

1. Clone repository
2. Add commands to path
3. CHMOD 755 executables
4. Modify USER_DIRECTORY in song

## Dependencies

* youtube-dl
* ffmpeg
* ruby
* nokigiri
* open-uri
* iTunes

## Want to help?
There are definitely some bugs. I could use some help making this more robust and accurate. Feel free to submit pull requests!

##todo
* add track-listing meta