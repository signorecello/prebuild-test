#!/usr/bin/env bash

# apt install gh
# gh codespace ports visibility 8080:public -c $CODESPACE_NAME

# (nohup /usr/local/bin/aztec sandbox &)
# cd react
r=$(tput sgr0)       # Reset color
bold=$(tput bold)    # Bold text
g=$(tput setaf 46)   # Light Green
b=$(tput setaf 21)   # Bright Blue
p=$(tput setaf 13)   # Magenta
y=$(tput setaf 226)  # Bright Yellow
c=$(tput setaf 51)   # Cyan
o=$(tput setaf 208)  # Orange

# Function to print colored text
print_colored() {
  case $2 in
    green)
      color=$g
      ;;
    blue)
      color=$b
      ;;
    magenta)
      color=$p
      ;;
    yellow)
      color=$y
      ;;
    cyan)
      color=$c
      ;;
    orange)
      color=$o
      ;;
    *)
      color=$r
      ;;
  esac
  echo "${color}$1${r}"
}

echo
echo "${bold}${c} █████╗ ███████╗████████╗███████╗ ██████╗${r}"
echo "${bold}${o}██╔══██╗╚══███╔╝╚══██╔══╝██╔════╝██╔════╝${r}"
echo "${bold}${g}███████║  ███╔╝    ██║   █████╗  ██║${r}"
echo "${bold}${b}██╔══██║ ███╔╝     ██║   ██╔══╝  ██║${r}"
echo "${bold}${p}██║  ██║███████╗   ██║   ███████╗╚██████╗${r}"
echo "${bold}${y}╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝ ╚═════╝${r}"
echo
print_colored "${bold}Sandbox Codespace" "cyan"
print_colored "${bold}Your codespace is ready with your chosen box! 🎉" "cyan"
echo
print_colored "All the packages are already installed, and you can now run yarn start or any other package.json script" "magenta"
echo
print_colored "You can also use this codespace for its running sandbox, by connecting your local environment to it" "magenta"
echo
print_colored "To do so, prepend your commands with PXE_URL=${PXE_URL}" "magenta"
echo
print_colored "Enjoy your sandbox! 🏖️" "orange"
