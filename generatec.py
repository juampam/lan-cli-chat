class bcolors:
    NC='\033[0m'
    Black='\033[0;30m'        # Black
    Red='\033[0;31m'          # Red
    Green='\033[0;32m'        # Green
    Yellow='\033[0;33m'       # Yellow
    Blue='\033[0;34m'         # Blue
    Purple='\033[0;35m'       # Purple
    Cyan='\033[0;36m'         # Cyan
    White='\033[0;37m'        # White
    UNDERLINE = '\033[4m'

def scheme():
    file = open("colors","w")
    file.write(
         f"{bcolors.Black}Black:\tB1{bcolors.NC}\t\t\t{bcolors.Red}Red:\tR1{bcolors.NC}\n{bcolors.Green}Green\tG1{bcolors.NC}\t\t\t{bcolors.Yellow}Yellow\tY1{bcolors.NC}\n{bcolors.Blue}Blue\tB2{bcolors.NC}\t\t\t{bcolors.Purple}Purple\tP1{bcolors.NC}\n{bcolors.Cyan}Cyan\tC1{bcolors.NC}\t\t\t{bcolors.White}White\tWH{bcolors.NC}\n"
    )

scheme()
