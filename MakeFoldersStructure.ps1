param([string]$name = "", [string]$git = "PLEASE UPDATE GIT REPOSITORY", [string]$desc = "", [string]$author = "Aleksander Chromik", [string]$prefix = "achromik" )

$packagePrefix = $prefix+"-";


if ($git.LastIndexOf(".git") -eq $git.Length-4) {
    $gitUrl = $git.Substring(0,$git.Length-4)
}


mkdir $name                                         <# create folder $name              #>   
Set-Location $name                                  <# change directory to $name        #>
$path = ".\css", ".\js", ".\sass", ".\img"          <# set folders structure            #>
mkdir $path -force                                  <# make folders structure           #>

Copy-Item $PSScriptRoot\mfs_data\.gitignore ".\"

Copy-Item $PSScriptRoot\mfs_data\gruntfile.js ".\"


<######             make README.md file                     ######>

Set-Content .\README.md "# $name" 
Add-Content .\README.md "`n`n#### $desc"


<######             make package.json file                  ######>

Set-Content .\package.json "{ "
Add-Content .\package.json "`t`"name`": `"$packagePrefix$name`"," 
Add-Content .\package.json "`t`"version`": `"1.0.0`","
Add-Content .\package.json "`t`"description`": `"$desc`","
Add-Content .\package.json "`t`"main`": `"index.js`","
Add-Content .\package.json "`t`"scripts`": {"
Add-Content .\package.json "`t`t`"test`": `"echo \`"Error: no test specified\`" && exit 1`""
Add-Content .\package.json "`t},"
Add-Content .\package.json "`t`"keywords`": [],"
Add-Content .\package.json "`t`"author`": `"$author`","
Add-Content .\package.json "`t`"license`": `"ISC`","
Add-Content .\package.json "`t`"repository`": {"
Add-Content .\package.json "`t`t`"type`": `"git`","
Add-Content .\package.json "`t`t`"url`": `"git+$git`""
Add-Content .\package.json "`t`},"
Add-Content .\package.json "`t`"bugs`": {"
Add-Content .\package.json "`t`t`"url`": `"$gitUrl/issues`""
Add-Content .\package.json "`t`},"
Add-Content .\package.json "`t`"homepage`": `"$gitUrl#readme`","
Add-Content .\package.json "`t`"devDependencies`": {"
Add-Content .\package.json "`t`t`"autoprefixer`": `"^7.1.2`","
Add-Content .\package.json "`t`t`"cssnano`": `"^3.10.0`","
Add-Content .\package.json "`t`t`"grunt`": `"^1.0.1`","
Add-Content .\package.json "`t`t`"grunt-browser-sync`": `"^2.2.0`","
Add-Content .\package.json "`t`t`"grunt-contrib-cssmin`": `"^2.2.1`","
Add-Content .\package.json "`t`t`"grunt-contrib-imagemin`": `"^2.0.1`","
Add-Content .\package.json "`t`t`"grunt-contrib-jshint`": `"^1.1.0`","
Add-Content .\package.json "`t`t`"grunt-contrib-uglify`": `"^3.0.1`","
Add-Content .\package.json "`t`t`"grunt-contrib-watch`": `"^1.0.0`","
Add-Content .\package.json "`t`t`"grunt-postcss`": `"^0.8.0`","
Add-Content .\package.json "`t`t`"grunt-sass`": `"^2.0.0`","
Add-Content .\package.json "`t`t`"pixrem`": `"^4.0.1`""
Add-Content .\package.json "`t`}"
Add-Content .\package.json "}" 

Set-Location ..