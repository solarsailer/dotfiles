function convert_m4a_to_mp3 -d "Convert a M4A to an high quality MP3"
  ffmpeg -v 5 -y -i $argv -acodec libmp3lame -ac 2 -ab 320k $argv.mp3
end
