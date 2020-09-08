<font face="Trebuchet MS">

# BASH COMMANDS  
***


#### pwd
###### Print Working Directory
```bash
$ pwd
/
```

#### ls
###### List files in current directory

```bash
ls [options][location]
$ ls
bin/  etc/

$ ls -l
drwxr-xr-x 1 CHIRAG 197121       0 Nov  7  2018 bin/
drwxr-xr-x 1 CHIRAG 197121       0 Nov  7  2018 etc/
-rw-r--r-- 1 CHIRAG 197121  132718 Jun 22  2018 ReleaseNotes.html

$ ls -l /etc
-rw-r--r-- 1 CHIRAG 197121   622 Mar 12  2018 bash.bash_logout

$ ls /etc
bash.bash_logout  hosts                nanorc  
```
<font face="Courier New">

|Type|Permission|Block|Owner|Size|Modification Date|Name|
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
|d or -|rwxr-xr-x|1|CHIRAG|197121|Nov 7 2018| bin/
</font>

#### Paths
~  _is a shortcut for your home directory._  
*.* _is a reference to your current directory._  
*..* _is a reference to the parent directory._  

```bash
$ ls ~/etc              LIST ETC IN HOME DIRECTORY
$ ls ./etc              LIST ETC IN CURRENT DIRECTORY
$ ls /home/CHIRAG/etc   LIST ETC BY PROVIDING ABSOLUTE PATH
```

### cd
###### change directory
```bash
$ cd \                  TO ROOT
$ cd ../../             TO PARENT OF THE PARENT
$ cd /home/CHIRAG/test  TO ABSOLUTE LOCATION
$ cd ..                 TO PARENT DIRECTORY
$ cd documents          RO DOCUMENT DIRECTORY LOCATED IN CURRENT DIRECTORY
```
