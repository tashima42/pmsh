#! /bin/bash
CONFIG_FILE=$HOME/.config/.pmsh

function get_real_path() {
  echo "$(realpath $1)"
}

function add_project() {
  name=$1
  directory="$(get_real_path $2)"
  sed -i "\$i function $name(){ cd $directory ; }" $CONFIG_FILE
}

function remove_project() {
  name=$1
  sed -i "/\function $name\()/d" $CONFIG_FILE
}

function edit_project() {
  name=$1
  directory=$2
  remove_project $name
  add_project $name $directory
}

function list_projects() {
  while read p; do
    echo "file: $p"
    name=$(echo "$p" | grep --o -P "(?<=function\ )..*(?=\(\) )")
    directory=$(echo "$p" | grep -o -P "(?<=cd\ \")..*(?=\")")
    echo "$name = $directory"
  done <$CONFIG_FILE
}

function help_message() {
  echo "Usage:  pmsh {help|list|add|remove|edit}
Examples:
    List: pmsh list
    Add: pmsh add \$name \$directory
    Remove: pmsh remove \$name
    Edit: pmsh edit \$name \$new_directory"
}

default_message="Invalid argument, try: pmsh help"

for i in "$@"; do
  case $i in
    help)
      help_message
      exit 0
      ;;
    list)
      list_projects
      exit 0
      ;;
    add)
      add_project $2 $3
      exit 0
      ;;
    remove)
      remove_project $2
      exit 0
      ;;
    edit)
      edit_project $2 $3
      exit 0
      ;;
    *)
      echo $default_message
      exit 0
      ;;
  esac
done

echo $default_message
exit 0

