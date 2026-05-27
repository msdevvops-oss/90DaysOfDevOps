# File Permissions & File Operations Challenge

## Files Created

* Create empty file devops.txt using touch
* Create notes.txt with some content using cat or echo
* Create script.sh using vim with content: echo "Hello DevOps"
* Verify: ls -l to see permissions

![snapsht](dev/IMG.png)

## Read Files

* Read notes.txt using cat
* View script.sh in vim read-only mode - `vim -R script.sh`
* Display first 5 lines of /etc/passwd using head 
* Display last 5 lines of /etc/passwd using tail
![snapshot](dev/IMG2.png)

## Understand Permissions
![snapshot](dev/IMG3.png)

* Current Permission 

Devops.txt -rw-rw-r--

- `-` -> Shows that it is a regular file.
- `rrw-` -> (user/owner) -> read + write -> no execute
- `rw-` -> (group) -> read + write -> no execute
- `r--` (other) -> read + execute -> no write 

* Same permissions applied to notes.txt and script.sh.

## Modify Permissions  

* Make script.sh executable → run it with ./script.sh
![snapshot](dev/IMG4.png)

* Set devops.txt to read-only (remove write for all)
![snapshot](dev/IMG5.png)


* Create directory project/ with permissions 755
![snapshot](dev/IMG6.png)


## Test Permissions

* Writing to a read-only file - what happens?

It gives permission denied error

* Try executing a file without execute permission.

Executing a file without execute permission gives Permission denied. 
![snapshot](dev/IMG7.png)

## Commands used

* `touch fname` - Creates empty file.
* `echo "Hello" > fname` - Create file with content.
* `vim fname` - Create/open file in Vim.
* `cat fname` - Prints files content.
* `vim -R fname` - Open file in read only mode.
* `cat /etc/passwd | head -5` - Prints first 5 lines of /etc/passwd.
* `cat /etc/passwd | tail -5` - Prints last 5 lines of /etc/passwd.
* `chmod 777 fname` - Adding executable permission for all(owner,group,others).
* `chmod 555 fname` - Removing write permission for all(owner,group,others).
* `mkdir 755 dname` - Create directory with permissions(rwx,r-x,r-x).

## Conclusion

* Managing files permissions effectively.




