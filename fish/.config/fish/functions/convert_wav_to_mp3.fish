# Example:
# $ convert_wav_to_mp3 Supermassive.wav Supermassive.mp3
function convert_wav_to_mp3 -d "Convert a WAV to an high quality MP3"
  lame -b 320 -h $argv
end
