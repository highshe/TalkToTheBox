
export http_proxy="http://127.0.0.1:10809"
export https_proxy="http://127.0.0.1:10809"

#echo '$0: Script Name: '$0
#echo '$1: Keyword: '$1
#echo '$2: Temperature: '$2

#echo "\nInput": $1
#echo "\nOutput:" 
temp=1.0
curl=`cat <<EOS
curl -s https://api.openai.com/v1/images/generations \
  -H 'Content-Type: application/json' \
  -H "Authorization: Bearer replaceYourOpenAiKeyHereNoMoreQuosts" \
  -d '{
  "prompt": "$1",
  "n": 2,
  "size": "1024x1024"

}' \
--insecure 
EOS`

eval ${curl}
