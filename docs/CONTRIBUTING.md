[![License](https://img.shields.io/github/license/tmslpm/Collection-Github-Action)](https://img.shields.io/github/license/tmslpm/Collection-Github-Action)

# How to contribute

### Do you intend to add a new action ?

Open a new GitHub pull request with the new action! Make sure that the final source code of your github action contains the name, description and category as a comment.  

like:
```yml
# name: My Action Name
# category: my-action-category
# description: My awesome description
name: 😻 Hello World - My Action Name
run-name: ${{ github.actor }} - print Hello World !
on: workflow_dispatch
... your code ...
```

###  Did you write a patch that fixes a bug?
 
Open a new GitHub pull request with the patch, make sure the request description clearly describes the problem and the solution. Include the problem number if necessary.

### Did you fix whitespace, format code, or make a purely cosmetic patch?

Changes that are cosmetic in nature and do not add anything substantial to the stability, functionality, or testability will generally not be accepted.


Thanks!