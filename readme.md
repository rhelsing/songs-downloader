# CLI Song Downloader Work in progress

Downloads songs from youtube, imports proper meta-data and album art, adds to iTunes automatically. Requires some configuration at the moment but it's worth it.

* usage:

```command
song "bonobo kiara" [optional number of songs to download | default = 10]
songs "taylor swift"
```

* song "title and artist" :: downloads an individual track
* songs "artist" :: downloads the top 10 tracks for an artist (based on last.fm for the last 6 months)

## Installation

1. Clone repository
2. Add commands to path
3. Modify each file's directory path calls to match your system.

## Dependencies

* youtube-dl
* ffmpeg
* ruby
* nokigiri
* open-uri
* iTunes

## Want to help?
There are definitely some bugs. I could use some help making this more robust and accurate. Feel free to submit pull requests!

* agnostic directory structure. ~/Music instead
* add album command