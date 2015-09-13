# Add Public SSH Key to Remote Server in a Single Command
cat ~/.ssh/id_rsa.pub | ssh user@hostname 'cat >> .ssh/authorized_keys'
