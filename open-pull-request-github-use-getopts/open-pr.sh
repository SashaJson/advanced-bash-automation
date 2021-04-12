#!/bin/bash

current_branch=$(git rev-parse --abrev-ref HEAD)
username=''
title=''
password=''

usage() {
  echo "Usage: open-pr [-u <username>] [-p <password-token>] [-t <title of the PR>] <body of PR>"
}

while getopts ':u:p:t:h' opt; do
  case "$opt" in
    u) username="$OPTARG";;
    p) password="$OPTARG";;
    t) title="$OPTARG";;
    h) 
       usage
       exit
    ;;
    \?) 
      echo "Invalid option $OPTARG" >&2
      usage >&2
      exit 1
    ;;
  esac
done

shift $(( OPTIND - 1 ))

if [[ $current_branch == 'master' ]]; then
  echo "You are already on master, create a new branch, push it, and then run this script" >&2
  exit 1  
fi

check_is_set() {
  if [[ -z $2 ]]; then 
    echo "ERROR: $1 must be set" >&2
    usage >&2
    exit
  fi
}

check_is_set "username" $username
check_is_set "password" $password
check_is_set "title" $title
