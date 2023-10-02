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
strTableList=""
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
    strList="${strList}\
        <h2>🟢 ${title}</h2>\
        <p>${description}</p>\
        <p>↳ 🔗 <a href='${URL}${f}' title='open the source code of the action'>source code</a>\
        - <a href='${RAW_URL}${f}' title='open the raw code of the action'>raw</a>\
        - <a href='${ACTION_URL}${f}' title='open the the action'>action</a>\
        <img src='${ACTION_URL}${f}/badge.svg' alt='badge action/${f}@main'/>\
        </p>${BACK_TO_TOP}"
done

#--------------------------------------------------------------
# write in readme
echo "\
<h1>🚀 Collection Github Action</h1>\
<h2>Table</h2>\
<ul>${strTableList}</ul>\
<hr>\
${strList}\
<p style="text-align:center" align="center">readme generated on $(date "\`+%H:%M:%S\` at \`%d/%m/%y\`")</p>\
" > README.md