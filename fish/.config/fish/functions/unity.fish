function unity
  set -l project_settings ProjectSettings/ProjectVersion.txt

  if not test -e $project_settings
    echo 'No Unity detected'
    return 1
  end

  set -l unity_version (cat $project_settings | awk '/EditorVersion/ {print $2}')
  set -l unity_app "/Applications/Unity $unity_version/Unity $unity_version.app"

  echo "Using Unity $unity_version…"
  open $unity_app
end
