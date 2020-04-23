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

      exiftool -q "-DateTimeOriginal>FileModifyDate" $file

      set date (exiftool -d "%Y-%m-%d" -DateTimeOriginal -S -s $file)
      set time (exiftool -d "%H%M%S" -DateTimeOriginal -S -s $file)
      set model (exiftool -Model -S -s $file | sed 's/ /-/g')
      set extension (echo $file | awk -F. '{print $NF}')
      set random (random 1000 9999)

      mv -n $file $date"_"$model"_"$time$random.$extension

      echo -n " → "
      set_color -o green
      echo $date"_"$model"_"$time$random.$extension
      set_color normal
    else
      set_color red
      echo "$file is not a valid file"
      set_color normal
    end
  end
end
