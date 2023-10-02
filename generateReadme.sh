#--------------------------------------------------------------
# config 
ENTRY_PATH="./.github/workflows"
RAW_URL="https://raw.githubusercontent.com/tmslpm/Collection-Github-Action/main/.github/workflows/"
URL="https://github.com/tmslpm/Collection-Github-Action/blob/main/.github/workflows/" 

#--------------------------------------------------------------
# get all workflows in repos
RESULT=$(ls $ENTRY_PATH)

#--------------------------------------------------------------
# append all action title + link in variable 
strList="<table><tr><td>name</td><td>source</td><td>raw</td></tr>"
for f in $RESULT; do
    title=$(cat "${ENTRY_PATH}/${f}" | grep "^name:")
    strList="${strList}<tr><h4><td>${title/name:/''}</td><td><a href='${URL}${f}' title='open the action'>${f}</a></td><td><a href='${RAW_URL}${f}' title='open the action'>raw</a></td></tr>"
done
strList="${strList}</table"

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
