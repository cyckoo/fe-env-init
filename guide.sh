

function echoInfo() {
  echo "\033[34m 【info】$1\033[0m"
}

function echoSuccess() {
  echo "\033[32m 【success】$1\033[0m"
}

function echoError() {
  echo "\033[31m 【error】$1\033[0m"
}


# $1命令行名称 $2检测命令 $3安装指引
function checkCMD() {  
  if eval "$2" &> /dev/null;
  then
      echoSuccess "$1 已安装"
  else 
      echoError "$1 未安装  $3"
  fi
}

function checkApp() {
  if [ -d "$2" ]
  then
      echoSuccess "$1 已安装"
  else 
      echoError "$1 未安装 $3"
  fi
}

function start() {

  echoInfo "命令行软件开始检测...."

  checkCMD "homebrew" "brew -v" "安装地址: https://brew.sh/index_zh-cn"

  checkApp "nvm" "${HOME}/.nvm" "安装地址: https://github.com/nvm-sh/nvm"

  checkCMD "node" "node -v" "可通过nvm来安装"

  checkCMD "cnpm" "cnpm -v" "安装: https://www.npmjs.com/package/cnpm"

  echo "\n\n"
  
  echoInfo "APP软件检测..."

  sleep 1

  checkApp "vscode" "/Applications/Visual Studio Code.app" "下载地址: https://code.visualstudio.com/"

  checkApp "chrome" "/Applications/Google Chrome.app" "下载地址: https://www.google.com/intl/zh-CN/chrome/"

  checkApp "Alfred 4" "/Applications/Alfred 4.app" "下载地址: https://www.alfredapp.com/"

  checkApp "Xcode" "/Applications/Xcode.app" "app store下载"


}

start;

# git 私密ssh
# ssh-keygen -t rsa

# 复制
# pbcopy < ~/.ssh/id_rsa.pub


