# lan-cli-chat
## Currently version do not work!
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
2. create a user called _noc_ and set _"Zeyx5aJw"_ for the password, (You can change these parameters)
3. move the [app](https://github.com/juampam/lan-cli-chat/blob/master/app), [chdb](https://github.com/juampam/lan-cli-chat/blob/master/chdb) and [chdbs](https://github.com/juampam/lan-cli-chat/blob/master/chdbs) files to your server, then execute 
```bash
./app.sh
```
--- 
# Next Realese coming soon!
## Changes
- To Create a server, just run a script and anawer some questions!
- A mistery user has been the control of the chat 👻
- Change your name, change your color every times you want.
--- 
# Developer Notes
- Commit only the compiled code, this to avoid compilation problems.
- Create a install script from server and another from the client.
- In the server script, add options to provide any name.
