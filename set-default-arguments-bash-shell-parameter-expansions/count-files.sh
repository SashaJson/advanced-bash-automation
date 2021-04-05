dir=${1:-$PWD}
find "$dir" -maxdepth 1 -type f | wc -l
