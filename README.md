# lan-cli-chat
## Usage
1. You can use any GNU/Linux distribution for your server
2. Use the [connect](https://github.com/juampam/lan-cli-chat/blob/master/connect) script to connect automatically to the server by SSH.
3. Set a user name and start chating

## Install
1. Install openssh-server in your server
### Debian/Ubuntu
```bash
$ sudo apt install openssh-server
$ sudo systemctl start ssh
```
3. create a user called noc and set "Zeyx5aJw" for the password, (You can change these parameters but is easier let the names)
4. move the [app](https://github.com/juampam/lan-cli-chat/blob/master/app), [chdb](https://github.com/juampam/lan-cli-chat/blob/master/chdb) and [chdbs](https://github.com/juampam/lan-cli-chat/blob/master/chdbs) files to your server, then execute 
```bash
./app.sh
```
to run the aplication.
