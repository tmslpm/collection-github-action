##########################
##########################
# format entry to JSON

formatToJson=$( jq -n\
    --arg username "GithubActionTest"\
    --arg content "Hello from Github Action Webhook message"\
    '{username: $username, content: $content}'\
)
echo $formatToJson