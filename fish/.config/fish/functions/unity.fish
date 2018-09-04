function unity
  set -l project_settings ProjectSettings/ProjectVersion.txt

  if not test -e $project_settings
    echo 'No Unity detected'
    return 1
  end

  set -l current_path (pwd)
  set -l unity_version (cat $project_settings | awk '/EditorVersion/ {print $2}')
  set -l unity_app "/Applications/Unity $unity_version/Unity $unity_version.app"
  set -l unity_exe "/Applications/Unity\ $unity_version/Unity\ $unity_version.app/Contents/MacOS/Unity"

  echo "Using Unity $unity_version…"

  # If -l/--launcher argument is provided, just open the Unity app.
  # Otherwise, open the project without using the launcher.
  if test "$argv[1]" = "--launcher" -o "$argv[1]" = "-l"
    open "$unity_app"
  else
    bash -c "$unity_exe -projectPath $current_path &"
  end
end
