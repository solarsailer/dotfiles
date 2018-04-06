function film_simulation -d "Show filename, film simulation and saturation profile"
  exiftool -T -FileName -FilmMode -Saturation $argv
end
