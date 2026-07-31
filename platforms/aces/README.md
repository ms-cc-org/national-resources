# ACES(Accelerating Computing for Emerging Sciences)


# Prerequisite
- Researcher accounts on ACES are managed through [ACCESS](../access/README.md)
- All Researchers must be based in the US and associated with a US academic research institution.


# Login
You can access the cluster from the Portal Login as well as SSH.

## 1. Portal Login
Authorized ACCESS users can log in using the Web Portal:

https://portal-aces.hprc.tamu.edu

## 2. SSH Login

### 2.1 Check for existing references
- Check known hosts file in local .ssh directory. Delete any reference to aces-jump or login.aces from the known_hosts file. For Eg;
These below lines should be deleted since its contains reference to [aces-jump*] and "login.aces"
```
[aces-jump.hprc.tamu.edu]:8822 ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAICkaevMSCS0pCQ+ukrcmJWF7zOMrjCs3FaBlvJ4zbzFJ
[aces-jump.hprc.tamu.edu]:8822 ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC5m5mBNS+OkvGw1pEzAH4YfR6n9NEOqTsSeUTCbAlnUg2jijxHu812vvf2E4xCiiCCdf3O2IFKdXdJPvfMItcIFI9YqUMCq4l/hrYUv05rUTo5zivB5Ddj8m2s4ojiw0mQXgAio+lfVNbijrJ7owzDo6T/tqAYQPbPPcxTK4dCiWRRJoSe8MTl37kpK3vj2ize4hlR/LObLNZKcbpMDI9UEEIMAIag/G4w+/NqpwU918rc87hSaJz+Sq59GbXuDa7eSybnzGT8St9akULLSjYIrVr+UjarVh3+Kznf8ibXqq4TEXLfEYgoPAv/uexKlHXuUK3cxgT9sJzllYgBoXhllAXKWamIxXc3E8mWVgKWK2DgKavXJpkFk/voFMEElXhTL4EecB8XM5ahKMF/KyyPKDnxBMVPCxOgLl0dHKGWidLFZNHrLRMIErwMoYVViV8QagEHbOmj05k4iVgEg3z0g74+jNNLKb9Vxhrs+baI20WSggdGzetIfaeAO7JLuAM=
[aces-jump.hprc.tamu.edu]:8822 ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBEMepNongj4Q10Vb2jsjm7WYfGip4ASINLTU4zta1ITFB+J8zSu9ux4p8Qw5ufQZygGpW1IByd0u7Q2IOZBN68k=
login.aces.hprc.tamu.edu ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHUDV9REmbB/DHIURegx1ahKolMdk2v9k/BUCuXwtssi
login.aces.hprc.tamu.edu ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDWjCsdESNmR+iHKGhagOFKBgAZ8/ycrK5mlENtIjhjig+svHHGOMQz/EIg2VyswjvlhgGe1w+gGLe7l+OJ72KdQ+gL72MQTroGIWkXE5NDHRV9d73OjDj+jfEqL7yyHW+URDueVb/r2Pr/bfutYxstaim4kyAfE0X/pXoeRrijW10wQ0wbl59JR3b7FeiJzYKh2fWgWKSntmaO/Uc0gFQ3uim6dRXo21ROlK2cjX2wJ1FQMB1wCSUprdkNJhxgzqXt55aQuo8A6O32fKYmPOR+zmljOMYpviOBJvqCT3i21lmI7iGHs3Yo6OIaG2yx/o3x0OmmR0dAJOZ4lpcS4zMWZAfl0R9C2UKmzMsRr/3sYGR3AUwfY7xcHZDTo6RFV/KXcuSEYIvWzMKPtI4lN1WZXM5f5VjVXB/oJeLZ0IhA08fKu1Xs/WLSAQpCkLU7PTPbQzKGnTjiRsR/CqRUqEhJQkzQbqIm3DASmQXoGKTJjwHjQJkA79FPxGbQO/8+gm8=
login.aces.hprc.tamu.edu ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBNYIbL8C+QxRoTbbElBa1BdJuAWYB8VGntWHs5mJ0xrcqYrUjGMfQG58Sf4zuDJKgdOeRFmGunX1Hq6HRKG7UD8=
```
### 2.2 Generate the ssh key and download the keys
There are two ways to generate the ssh keys. </br>

The keys are valid only for 49 hours. You need to run step 2.2 and 2.3 once every 49 hours.

#### 2.2.1 Generate from sshca app (Preferred for initial setup)
- Login to the ACES portal https://portal-aces.hprc.tamu.edu
- Go to the "Utilities" drop down menu and click sshca.
- The sshca app will automatically run the key pair generation script.
- Click "Open file app" link toward the bottom of this page and it will direct you to the key pairs location in the Portal Files app.
- Download the key pair files 'id_aces_tamu' and 'id_aces_tamu-cert.pub'. Note the location of the downloaded files.


#### 2.2.2 Generate from Portal Shell CLI
- Login to the ACES portal https://portal-aces.hprc.tamu.edu
- Open a terminal: Go to the Clusters drop down menu and click >_aces Shell Access
- Run the script:
```
gen_ssh_cert.sh
```
- Go to the "Files" dropdown on the portal and click "Home Directory"
- Make sure the checkbox "Show Dotfiles" is checked
- Navigate to the .ssh/aces directory
- Download the pubkey pair files 'id_aces_tamu' and 'id_aces_tamu-cert.pub'. Note the location of the downloaded files.


### 2.3 Setup the downloaded keypair
- Create the directory "aces" on "$HOME/.ssh" directory on your local computer.
- Move the downloaded key pair 'id_aces_tamu' and 'id_aces_tamu-cert.pub' to the location "$HOME/.ssh/aces" on your local computer
- Set the permissions: On your local computer, make sure to update the permissions of both 'id_aces_tamu' and 'id_aces_tamu-cert.pub' with the command chmod 600 as shown below. This restricts read and write permissions to just the owner of the files.
```
chmod 600 $HOME/.ssh/aces/id_aces_tamu 
chmod 600 $HOME/.ssh/aces/id_aces_tamu-cert.pub
```

### 2.4 SSH into ACES
There are two ways to SSH to ACES

#### 2.4.1 Add to config file (Prefered)
- Create $HOME/.ssh/config file on your local computer if it doesn't exist.
```
touch $HOME/.ssh/config
```
- Add the following lines to the bottom of the file. Replace ACES_USERNAME with your ACES username and PATH_to_pubkey with the known location mentioned previously. PATH_to_pubkey for this would be "$HOME/.ssh/aces" since the dowbloaded file was moved to "$HOME/.ssh/aces". Make sure there's a blank line between any previous entries in the file:
```
Host aces-jump.hprc.tamu.edu
        Hostname aces-jump.hprc.tamu.edu
        User ACES_USERNAME
        IdentityFile "/PATH_to_pubkey/id_aces_tamu"
        Port 8822
        MACs hmac-sha2-512-etm@openssh.com,hmac-sha2-256-etm@openssh.com,umac-128-etm@openssh.com,hmac-sha2-512,hmac-sha2-256,umac-128@openssh.com

Host login.aces.hprc.tamu.edu
        Hostname login.aces.hprc.tamu.edu
        ProxyJump aces-jump.hprc.tamu.edu
        User ACES_USERNAME
        IdentityFile "/PATH_to_pubkey/id_aces_tamu"
        Port 22
        MACs hmac-sha2-512-etm@openssh.com,hmac-sha2-256-etm@openssh.com,umac-128-etm@openssh.com,hmac-sha2-512,hmac-sha2-256,umac-128@openssh.com
```
- Run the command below and you should be logged into the ACES.
```
ssh login.aces.hprc.tamu.edu

```

#### 2.4.2 Single line SSH command
- Run the command below. Replace ACES_USERNAME with your user id on ACES and PATH_to_pubkey with the path to the known location of the key on your local system

```
ssh -o ProxyCommand="ssh -W %h:%p ACES_USERNAME@aces-jump.hprc.tamu.edu -p 8822 -i /PATH_to_pubkey/id_aces_tamu" ACES_USERNAME@login.aces.hprc.tamu.edu -i /PATH_to_pubkey/id_aces_tamu

```

#### Note: PowerShell disclaimer for “Corrupted MAC on input”

If you are connecting from Windows PowerShell and you see the error message Corrupted MAC on input, please update your local SSH client configuration by adding the following MACs entry to the very beginning of your SSH config file, then try the SSH command again.

Open the .ssh/config file, paste this line at the very top, save, then retry your SSH command:

```
MACs hmac-sha2-512-etm@openssh.com,hmac-sha2-256-etm@openssh.com,umac-128-etm@openssh.com,hmac-sha2-512,hmac-sha2-256 umac-128@openssh.com
```


# Reference
https://hprc.tamu.edu/kb/User-Guides/ACES/

