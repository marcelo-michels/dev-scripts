function dns {
  echo "";
  dig +noall +answer $1 any
  echo "";
  echo "";
}

function ip {
  REQUEST_HEADER="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36"
  # check if have a parameter $1 
  if [ -z "$1" ]; then
    curl -A "$REQUEST_HEADER" https://ipapi.co/json/
  else
    curl -A "$REQUEST_HEADER" https://ipapi.co/$1/json/
  fi
}