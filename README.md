<h1>🚀 Collection Github Action</h1><h2>Table</h2> <h4>✨ generation</h4>  <li><a href='#--Gen-readme' title='go to  Gen readme'> Gen readme</a></li> <h4>✨ example</h4>  <li><a href='#--Get-all-gists-for-a-user' title='go to  Get all gists for a user'> Get all gists for a user</a></li> <li><a href='#--Get-profil-for-a-user' title='go to  Get profil for a user'> Get profil for a user</a></li> <li><a href='#--Get-all-repos-for-user' title='go to  Get all repos for user'> Get all repos for user</a></li> <li><a href='#--Commit-and-push-to-main' title='go to  Commit and push to main'> Commit and push to main</a></li> <h4>✨ hello-world</h4>  <li><a href='#--Hello-World---nodeJs' title='go to  Hello World - nodeJs'> Hello World - nodeJs</a></li> <li><a href='#--Hello-World---shell' title='go to  Hello World - shell'> Hello World - shell</a></li>        <h2>🟢  Gen readme</h2>        <p> This action uses a shell script to generate the README.md, it get all the actions in the directory `.github/workflows` and builds the different information collected.</p>        <p style=text-align:center align=center>        🔗         - <a href='https://github.com/tmslpm/Collection-Github-Action/blob/main/.github/workflows/gen_readme.tasks.yml' title='open the source code of the action'>SOURCE</a>        - <a href='https://raw.githubusercontent.com/tmslpm/Collection-Github-Action/main/.github/workflows/gen_readme.tasks.yml' title='open the raw code of the action'>RAW</a>        - <a href='https://github.com/tmslpm/Collection-Github-Action/actions/workflows/gen_readme.tasks.yml' title='open the the action'>ACTION</a>        - 🔗</p><p style=text-align:center align=center>        <img src='https://github.com/tmslpm/Collection-Github-Action/actions/workflows/gen_readme.tasks.yml/badge.svg' alt='badge action/gen_readme.tasks.yml@main'/>        </p><pre align=center>↑↑↑ <a href='#-collection-github-action' title='click to scroll up' alt='click to scroll up'>BACK TO TOP</a> ↑↑↑</pre>        <h2>🟢  Get all gists for a user</h2>        <p> This action uses the github api to get all gists for a user. The API request use CURL and requires a token to access the GITHUB api. The result is written to a json file.</p>        <p style=text-align:center align=center>        🔗         - <a href='https://github.com/tmslpm/Collection-Github-Action/blob/main/.github/workflows/gh_api_get_gist.tasks.yml' title='open the source code of the action'>SOURCE</a>        - <a href='https://raw.githubusercontent.com/tmslpm/Collection-Github-Action/main/.github/workflows/gh_api_get_gist.tasks.yml' title='open the raw code of the action'>RAW</a>        - <a href='https://github.com/tmslpm/Collection-Github-Action/actions/workflows/gh_api_get_gist.tasks.yml' title='open the the action'>ACTION</a>        - 🔗</p><p style=text-align:center align=center>        <img src='https://github.com/tmslpm/Collection-Github-Action/actions/workflows/gh_api_get_gist.tasks.yml/badge.svg' alt='badge action/gh_api_get_gist.tasks.yml@main'/>        </p><pre align=center>↑↑↑ <a href='#-collection-github-action' title='click to scroll up' alt='click to scroll up'>BACK TO TOP</a> ↑↑↑</pre>        <h2>🟢  Get profil for a user</h2>        <p> This action uses the github api to profil for a user. The API request use CURL and requires a token to access the GITHUB api. The result is written to a json file.</p>        <p style=text-align:center align=center>        🔗         - <a href='https://github.com/tmslpm/Collection-Github-Action/blob/main/.github/workflows/gh_api_get_profil.tasks.yml' title='open the source code of the action'>SOURCE</a>        - <a href='https://raw.githubusercontent.com/tmslpm/Collection-Github-Action/main/.github/workflows/gh_api_get_profil.tasks.yml' title='open the raw code of the action'>RAW</a>        - <a href='https://github.com/tmslpm/Collection-Github-Action/actions/workflows/gh_api_get_profil.tasks.yml' title='open the the action'>ACTION</a>        - 🔗</p><p style=text-align:center align=center>        <img src='https://github.com/tmslpm/Collection-Github-Action/actions/workflows/gh_api_get_profil.tasks.yml/badge.svg' alt='badge action/gh_api_get_profil.tasks.yml@main'/>        </p><pre align=center>↑↑↑ <a href='#-collection-github-action' title='click to scroll up' alt='click to scroll up'>BACK TO TOP</a> ↑↑↑</pre>        <h2>🟢  Get all repos for user</h2>        <p> This action uses the github api to get all repos for a user. The API request use CURL and requires a token to access the GITHUB api. The result is written to a json file. </p>        <p style=text-align:center align=center>        🔗         - <a href='https://github.com/tmslpm/Collection-Github-Action/blob/main/.github/workflows/gh_api_get_repos.tasks.yml' title='open the source code of the action'>SOURCE</a>        - <a href='https://raw.githubusercontent.com/tmslpm/Collection-Github-Action/main/.github/workflows/gh_api_get_repos.tasks.yml' title='open the raw code of the action'>RAW</a>        - <a href='https://github.com/tmslpm/Collection-Github-Action/actions/workflows/gh_api_get_repos.tasks.yml' title='open the the action'>ACTION</a>        - 🔗</p><p style=text-align:center align=center>        <img src='https://github.com/tmslpm/Collection-Github-Action/actions/workflows/gh_api_get_repos.tasks.yml/badge.svg' alt='badge action/gh_api_get_repos.tasks.yml@main'/>        </p><pre align=center>↑↑↑ <a href='#-collection-github-action' title='click to scroll up' alt='click to scroll up'>BACK TO TOP</a> ↑↑↑</pre>        <h2>🟢  Commit and push to main</h2>        <p> This action executes a `git add .`, a `git commit` (whith empty comment) and a `git  push` on this repos, it uses an external action `ad-m/github-push-action` for the `git push` (The default secrets.GITHUB_TOKEN is used).  </p>        <p style=text-align:center align=center>        🔗         - <a href='https://github.com/tmslpm/Collection-Github-Action/blob/main/.github/workflows/gh_api_push.tasks.yml' title='open the source code of the action'>SOURCE</a>        - <a href='https://raw.githubusercontent.com/tmslpm/Collection-Github-Action/main/.github/workflows/gh_api_push.tasks.yml' title='open the raw code of the action'>RAW</a>        - <a href='https://github.com/tmslpm/Collection-Github-Action/actions/workflows/gh_api_push.tasks.yml' title='open the the action'>ACTION</a>        - 🔗</p><p style=text-align:center align=center>        <img src='https://github.com/tmslpm/Collection-Github-Action/actions/workflows/gh_api_push.tasks.yml/badge.svg' alt='badge action/gh_api_push.tasks.yml@main'/>        </p><pre align=center>↑↑↑ <a href='#-collection-github-action' title='click to scroll up' alt='click to scroll up'>BACK TO TOP</a> ↑↑↑</pre>        <h2>🟢  Hello World - nodeJs</h2>        <p> This action is just for demonstration purposes (or a template), it shows how to execute a nodeJS script in Github action.</p>        <p style=text-align:center align=center>        🔗         - <a href='https://github.com/tmslpm/Collection-Github-Action/blob/main/.github/workflows/hello_world.nodejs.tasks.yml' title='open the source code of the action'>SOURCE</a>        - <a href='https://raw.githubusercontent.com/tmslpm/Collection-Github-Action/main/.github/workflows/hello_world.nodejs.tasks.yml' title='open the raw code of the action'>RAW</a>        - <a href='https://github.com/tmslpm/Collection-Github-Action/actions/workflows/hello_world.nodejs.tasks.yml' title='open the the action'>ACTION</a>        - 🔗</p><p style=text-align:center align=center>        <img src='https://github.com/tmslpm/Collection-Github-Action/actions/workflows/hello_world.nodejs.tasks.yml/badge.svg' alt='badge action/hello_world.nodejs.tasks.yml@main'/>        </p><pre align=center>↑↑↑ <a href='#-collection-github-action' title='click to scroll up' alt='click to scroll up'>BACK TO TOP</a> ↑↑↑</pre>        <h2>🟢  Hello World - shell</h2>        <p> This action is just for demonstration purposes (or a template), it shows how to execute a shell script in Github action.</p>        <p style=text-align:center align=center>        🔗         - <a href='https://github.com/tmslpm/Collection-Github-Action/blob/main/.github/workflows/hello_world.tasks.yml' title='open the source code of the action'>SOURCE</a>        - <a href='https://raw.githubusercontent.com/tmslpm/Collection-Github-Action/main/.github/workflows/hello_world.tasks.yml' title='open the raw code of the action'>RAW</a>        - <a href='https://github.com/tmslpm/Collection-Github-Action/actions/workflows/hello_world.tasks.yml' title='open the the action'>ACTION</a>        - 🔗</p><p style=text-align:center align=center>        <img src='https://github.com/tmslpm/Collection-Github-Action/actions/workflows/hello_world.tasks.yml/badge.svg' alt='badge action/hello_world.tasks.yml@main'/>        </p><pre align=center>↑↑↑ <a href='#-collection-github-action' title='click to scroll up' alt='click to scroll up'>BACK TO TOP</a> ↑↑↑</pre><hr><p style=text-align:center align=center>readme generated on 00:11:22 at 03/10/23</p>
