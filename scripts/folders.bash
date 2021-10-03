#!/usr/bin/env bash

function create_protected_folder {
  mkdir $1

  # Same permissions as the default User's folders.
  chmod 700 $1

  # Add an ACL to prevent the deletion of the folder.
  # Same ACL as the default User's folders.
  chmod +a "group:everyone deny delete" $1
}

# --------------------------------------------------------------
# Folders.
# --------------------------------------------------------------

create_protected_folder ~/Developer
create_protected_folder ~/Temp
