export http_proxy="http://127.0.0.1:10809"
export https_proxy="http://127.0.0.1:10809"

#echo '$0: Script Name: '$0
#echo '$1: Keyword: '$1
#echo '$2: Temperature: '$2

#echo "\nInput": $1
#echo "\nOutput:" 
temp=1.0
curl=`cat <<EOS
curl -s https://api.openai.com/v1/completions \
  -H 'Content-Type: application/json' \
  -H "Authorization: Bearer replaceYourOpenAiKeyHereNoMoreQuosts" \
  -d '{
  "model": "text-davinci-003",
  "prompt": "$1",
  "max_tokens": 4000,
  "temperature": $temp

}' \
--insecure | jq '.choices[]'.text
EOS`

eval ${curl}
