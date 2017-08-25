# MakeFoldersStructure MFS v.0.0.1

### Scripts to make folder's structure for HTML, CSS and JavaScripts projects

#### Params

**`-name`** 
Name for project and name for main folder. Inserted in `README.md` file in main heading

**`-desc`**
Description included in file `package.json` and in file `README.md`

**`-git`**
URL to GitHb repository. This info is included in `package.json` 

**`-author`**
Info about author. This info is included in file `package.json`

**`-prefix`**
Prefix for package's name. 
Eg.
        `MakeFoldersStructure.ps1 -name "package_demo" -prefix "myDemo"`

makes package name *`myDemo-package_demo`*


#### Structure of created folders
```
/CWD
 |
 +- /$name_folder 
         |
         +- /css
         |
         +- /img
         |
         +- /js
         |
         +- /sass
         |
         +- package.json
         |
         +- .gitignore
         | 
         +- gruntfile.js
         |
         +- README.md