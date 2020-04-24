# Example:
# $ rename_photo Photo-6580.jpg 2019-04-20_iPhone-XS_173010.jpg
#
# Pattern: YYYY-MM-DD_Camera_HHMMSS{1000-9999}.ext
function rename_photo -d "Rename a photo to a specific format"
  for file in $argv
    if test -f $file
      echo -n "Rename "
      set_color -o yellow
      echo -n $file
      set_color normal

      # Change the file modified date with the content date.
      exiftool -q "-DateTimeOriginal>FileModifyDate" $file

      # Get the date, model and extension.
      set date (exiftool -d "%Y-%m-%d" -DateTimeOriginal -S -s $file)
      set model (exiftool -Model -S -s $file | sed 's/ /-/g')
      set extension (echo $file | awk -F. '{print $NF}')

      # Try to find a 4 digits suffix in the filename.
      set suffix (echo $file | grep -ioE '([0-9]{4})\.(png|dng|raf|jpg|jpeg|heic|heif|tiff)$' | awk -F. '{print $1}')

      # As a backup, create a pseudo-unique string from the time and a random number.
      set time (exiftool -d "%H%M%S" -DateTimeOriginal -S -s $file)
      set random (random 1000 9999)

      # Use suffix if possible, otherwise, create a time and random number combination.
      if test -n "$suffix"
        set -g end (echo $suffix.$extension)
      else
        set -g end (echo $time$random.$extension)
      end

      mv -n $file $date"_"$model"_"$end

      echo -n " → "
      set_color -o green
      echo $date"_"$model"_"$end
      set_color normal
    else
      set_color red
      echo "$file is not a valid file"
      set_color normal
    end
  end
end
