# Light Kali Linux Docker image

Light and containerized version of Kali Linux with Docker containing only the useful tools and allowing to be launched on the fly

(Modify Dockerfile by Víctor)

## Install

Clone the project

```bash
git clone https://github.com/thibaudrobin/docker-kali-light.git
cd docker-kali-light
```

Create share and zsh history

```
sudo mkdir /mnt/share-kali-light
sudo cp conf/history /mnt/share-kali-light/.bash_history
```

Build the image

```bash
 docker build --network=host -t kali-light .
```

Create containers

```
pip install docker-compose --user
docker-compose run kali-light
```

Create some alias

```bash
echo "alias kali='docker-compose -f $HOME/docker-kali-light/docker-compose.yml run kali-light'" >> .bashrc && source .bashrc
```

More infos : https://thibaud-robin.fr/articles/docker-kali/

## Offensive tools installed

```md
aircrack-ng
amap
autorecon
bloodhound
bsdmainutils
cewl
crackmapexec
crunch
darkarmour
dirb
dirbuster
dnsenum
dnsrecon
dnsutils
dos2unix
enum4linux
exploitdb
ffuf
fuxploider
gobuster
hashcat
hping3
hydra
impacket-scripts
john
joomscan
lsassy
masscan
metasploit-framework
mimikatz
nbtscan
ncat
netcat-traditional
nikto
nmap
nosqlmap
onesixtyone
oscanner
passing-the-hash
patator
powershell
powersploit
pykek
python3-impacket
recon-ng
responder
samdump2
seclists
sipvicious
smbclient
smbmap
smtp-user-enum
socat
sprayhound
sqlmap
ssh-audit
sslscan
ssrfmap
tcpdump
testssl.sh
theharvester
tnscmd10g
wafw00f
weevely
wfuzz
whatweb
whatweb
wordlists
wpscan
```

You can easily modify the Dockerfile to add more tools. Enjoy :)

## Other project

If you want something much heavier and more complete, feel free to use Exegol from my friend Shutdown: https://github.com/ShutdownRepo/Exegol.
