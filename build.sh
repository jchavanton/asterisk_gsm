CURRENT_COMMIT=$1

if [ "$1" = "" ]; then
 CURRENT_COMMIT=`git rev-parse --short HEAD`
fi

if [[ ${#CURRENT_COMMIT} -eq 0 ]]; then
  echo >&2 "A commit id must be supplied as the first argument"
  exit 2
fi

docker build . -f Dockerfile -t asterisk_gsm:${CURRENT_COMMIT}
