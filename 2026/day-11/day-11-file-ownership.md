#  File Ownership Challenge (chown & chgrp)

## User created

## Users Created
- tokyo
- berlin
- nairobi
- professor

## Groups Created
- heist-team
- planners
- vault-team
- tech-team

## Files & Directories Created
- devops-file.txt
- app-logs/
- bank-heist/access-codes.txt
- bank-heist/blueprints.pdf
- bank-heist/escape-plan.txt
- heist-project/plans/strategy.conf
- heist-project/vault/gold.txt
- project-config.yml
- team-notes.txt

## Understanding Ownership

- Run ls -l in your home directory
- Identify the owner and group columns
- Check who owns your files
![snapshot](IMAGE/IMG1.png)

* Owner :  the account that created or was assigned the file.
* Group :  a collection of users who share the same access to the file.

## Basic chownn Operation

- Create file devops-file.txt
- Check current owner: ls -l devops-file.txt
- Change owner to berlin
- Verify the changes

![snapshot](IMAGE/IMG2.png)

## Basic chgrp Operation

- Create file team-notes.txt
- Check current group: ls -l team-notes.txt
- Create group: sudo groupadd heist-team
- Change file group to heist-team
- Verify the change
![snapshot](IMAGE/IMG3.png)

## Combined Owner & Group Change

Using chown you can change both owner and group together:

- Create file project-config.yaml
- Change owner to professor AND group to heist-team (one command)
- Create directory app-logs/
- Change its owner to berlin and group to heist-team
![snapshot](IMAGE/IMG4.png)

## Recursive Ownership

1. Create directory structure:
   
`mkdir -p heist-project/vault`
`mkdir -p heist-project/plans`
`touch heist-project/vault/gold.txt`
`touch heist-project/plans/strategy.conf`

2. Create group `planners`: `sudo groupadd planners`

3. Change ownership of entire `heist-project/` directory:
   - Owner: `professor`
   - Group: `planners`
   - Use recursive flag (`-R`)

4. Verify all files and subdirectories changed: `ls -lR heist-project/`
![snapshot](IMAGE/IMG5.png)

## Practice Challenge

1. Create users: `tokyo`, `berlin`, `nairobi` (if not already created)
2. Create groups: `vault-team`, `tech-team`
3. Create directory: `bank-heist/`
4. Create 3 files inside:
   ```
   touch bank-heist/access-codes.txt
   touch bank-heist/blueprints.pdf
   touch bank-heist/escape-plan.txt
   ```

5. Set different ownership:
   - `access-codes.txt` → owner: `tokyo`, group: `vault-team`
   - `blueprints.pdf` → owner: `berlin`, group: `tech-team`
   - `escape-plan.txt` → owner: `nairobi`, group: `vault-team`

**Verify:** `ls -l bank-heist/`

![snapshot](IMAGE/IMG6.png)

## Commands Used

- View ownership : `ls -l filename`
- Change owner only : `sudo chown newowner filename`
- Change group only : `sudo chgrp newgroup filename`
- Change both owner and group : `sudo chown owner:group filename`
- Recursive change (directories) : `sudo chown -R owner:group directory/`
- Change only group with chown : `sudo chown :groupname filename` 

## What I Learned

* Managing User & Groups
* Understood file ownership

