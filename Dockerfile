# Dockerfile kali-light 

# Official base image 
FROM kalilinux/kali-rolling 

# Apt 
RUN apt-get -y update 

# Install tools we want 
RUN apt-get install -y \ 
   hydra \ 
   john \ 
   metasploit-framework \ 
   nmap \ 
   sqlmap \ 
   wfuzz \ 
   exploitdb \ 
   nikto \ 
   commix \ 
   hashcat \ 
   # Wordlists 
   wordlists \  
   cewl \ 
   aircrack-ng \ 
   crackmapexec \ 
   crunch \ 
   dirb \ 
   dirbuster \ 
   dnsenum \ 
   dnsrecon \ 
   dnsutils \ 
   dos2unix \ 
   enum4linux \ 
   ftp \ 
   gobuster \ 
   hping3 \ 
   impacket-scripts \ 
   joomscan \ 
   masscan \ 
   mimikatz \ 
   ncat \ 
   netcat-traditional \  
   patator \ 
   php \ 
   powersploit \ 
   proxychains \ 
   recon-ng \ 
   responder \ 
   samba \ 
   samdump2 \ 
   smbclient \ 
   smbmap \ 
   snmp \ 
   socat \ 
   sslscan \ 
   sslstrip \ 
   theharvester \  
   vim \ 
   wafw00f \  
   weevely \ 
   whois \ 
   wpscan \
   iputils-ping
 

# History 
ADD ./conf/history /root/.bash_history 

# Aliases 
ADD ./conf/aliases /opt/aliases 
RUN echo 'source /opt/aliases' >> /root/.bashrc 

# Open shell 
CMD ["/bin/bash"]
 
