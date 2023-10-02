#--------------------------------------------------------------
# config 
ENTRY_PATH="./.github/workflows"
RAW_URL="https://raw.githubusercontent.com/tmslpm/Collection-Github-Action/main/.github/workflows/"
URL="https://github.com/tmslpm/Collection-Github-Action/blob/main/.github/workflows/" 
BACK_TO_TOP="<pre align=center>↑↑↑ <a href='#-collection-github-action' title='click to scroll up' alt='click to scroll up'>BACK TO TOP</a> ↑↑↑</pre>"

#--------------------------------------------------------------
# get all workflows in repos
RESULT=$(ls $ENTRY_PATH)

 
#--------------------------------------------------------------
# append all action title + link in variable 
strList=""
for f in $RESULT; do
    title=$(cat "${ENTRY_PATH}/${f}" | grep "^# name:")
    description=$(cat "${ENTRY_PATH}/${f}" | grep "# description:")
    strList="${strList}<hr><h4>${title/\# name:/''}</h4><p>${description/\# description:/''}</p><p>↳ 🔗 <a href='${URL}${f}' title='open the action'>${f}</a> (<a href='${RAW_URL}${f}' title='open the action'>raw</a>)</p>${BACK_TO_TOP}"
done

#--------------------------------------------------------------
# write in readme
cat > README.md << EOL
<h1>🚀 Collection Github Action</h1>
${strList}
EOL
