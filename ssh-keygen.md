## Tips on `ssh-keygen`

`ssh-keygen` is used to generate a keypair (private and public), which 
are deployed so that during `ssh`, password is no need to be entered

### Usage
---------
```
ssh-keygen -t rsa -b 4096 -C username@domain.com -f $HOME/.ssh/rsa_key_file_4096
```	

Here, 
	- **-t**: name of the algorithm
	- **-b**: byte size of the key
	- **-C**: comment - useful to help identify the key
	- **-f**: name of the file (here rsa_key_file_4096) to save the key 

Full example:
```
ssh-keygen -t rsa -b 4096 -C nj7w@digitalocean.com -f $HOME/.ssh/rsa_key_do_4096
```

Enter blank (i.e. Press Enter key) as passphrase. It will ask you 
twice: press "Enter key" twice

- Verify that two files are generated in `$HOME/.ssh`
```
ls -l ~/.ssh

>>> $HOME/.ssh/rsa_key_do_4096
>>> $HOME/.ssh/rsa_key_do_4096.pub 
```

The one with `.pub` suffix is the **public key** and the one with no suffix
is **private key**

### SSH Key posting

After generating the key pair, we need to post the public key on the
remote server. 

- First, send the public key via FTP, SFTP, or even by email as an 
attachment. Example, to transfer the file to the remote machine using SCP, execute 
```
scp ~/.ssh/rsa_key_do_4096.pub username@remotehost:.
```

- Next, to post it on the remote machine, append the key to `~/.ssh/authorized_keys`.
Example, on the remote machine:
```
cat ~/rsa_key_do_4096.pub >> ~/.ssh/authorized_keys
```

Then, we can delete the public key from the remote machine, as it is already added
to the `authorized_keys`:
```
rm ~/rsa_key_do_4096.pub
```

**Do NOT post private key**

### Multiple ssh private keys

- Create different private-public key pairs for each server as above.
- Create `~/.ssh/config` file and add information about each key. Example:
- `vim ~/.ssh/config`
```
Host 			friendly name
HostName 		Long.and.cumbersome.server.name
IdentityFile	~/.ssh/private_ssh_file
User			username-on-remote-machine
```

Add the 4 lines above for each of the public keys.

