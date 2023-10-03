
messageToJson=$( jq -n\
    --arg username "GithubActionTest"\
    --arg content "Hello from Github Action Webhook message"\
    '{username: $username, content: $content}'\
)
curl \
  -H "Content-Type: application/json" \
  -d "${messageToJson}" \
  $url