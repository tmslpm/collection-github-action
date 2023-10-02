#--------------------------------------------------------------
# config 
ENTRY_PATH="./.github/workflows"
ACTION_URL="https://github.com/tmslpm/Collection-Github-Action/actions/workflows/"
RAW_URL="https://raw.githubusercontent.com/tmslpm/Collection-Github-Action/main/.github/workflows/"
URL="https://github.com/tmslpm/Collection-Github-Action/blob/main/.github/workflows/" 
BACK_TO_TOP="<pre align=center>↑↑↑ <a href='#-collection-github-action' title='click to scroll up' alt='click to scroll up'>BACK TO TOP</a> ↑↑↑</pre>"

#--------------------------------------------------------------
# get all workflows in repos
RESULT=$(ls $ENTRY_PATH)
  
#--------------------------------------------------------------
# append all action title + link in variable 
strTableList="<h2>Table</h2>"
strList=""
for f in $RESULT; do
    # title
    title=$(cat "${ENTRY_PATH}/${f}" | grep "^# name:")
    title="${title/\# name:/''}"
    # description
    description=$(cat "${ENTRY_PATH}/${f}" | grep "# description:")
    description="${description/\# description:/''}"
    # build
    strTableList="${strTableList}<li><a href='#-${title// /-}' title='go to ${title}'>${title}</a></li>"
    strSourceURL="🔗 <a href='${URL}${f}' title='open the source code of the action'>${f}</a>"
    strRawURL="(<a href='${RAW_URL}${f}' title='open the raw code of the action'>raw</a>)"
    strActionURL="(<a href='${ACTION_URL}${f}' title='open the the action'>action</a>)"
    strList="${strList}<h2>🟢 ${title}</h2><p>${description}</p><p>↳ ${strSourceURL} ${strRawURL} ${strActionURL}<img src='${ACTION_URL}${f}/badge.svg' alt='badge action/${f}@main'/></p>${BACK_TO_TOP}"
done

#--------------------------------------------------------------
# get current date and hours
strDate=date "+%H:%M:%S   %d/%m/%y"

#--------------------------------------------------------------
# write in readme
cat > README.md << EOL
<h1>🚀 Collection Github Action</h1>
<ul>${strTableList}</ul>
<hr>
${strList}
<p style="text-align:center" align="center">readme generated on $(date "\`+%H:%M:%S\` at \`%d/%m/%y\`")</p>
EOL
