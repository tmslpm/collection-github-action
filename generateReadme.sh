#--------------------------------------------------------------
# config 
ENTRY_PATH="./.github/workflows"
RAW_URL="https://raw.githubusercontent.com/tmslpm/Collection-Github-Action/main/.github/workflows/"
URL="https://github.com/tmslpm/Collection-Github-Action/blob/main/.github/workflows/" 

#--------------------------------------------------------------
# get all workflows in repos
RESULT=$(ls $ENTRY_PATH)

#--------------------------------------------------------------
# append all action title + link in readme 
strList=""
for f in $RESULT; do
    title=$(cat "${ENTRY_PATH}/${f}" | grep "^name:")
    strList="${strList}<br><h4>${title/name:/''}</h4><p>🔗 <a href='${URL}${f}' title='open the action'>${f}</a> (<a href='${RAW_URL}${f}' title='open the action'>raw</a>)</p>"
done

#--------------------------------------------------------------
# write in readme
cat > README.md << EOL
<h1>🚀 Collection Github Action</h1>
${strList}
<hr>
<pre align=center>
↑↑↑ <a href="#-collection-github-action" title="click to scroll up" alt="click to scroll up">BACK TO TOP</a> ↑↑↑
</pre>
EOL
