# Day 17 – Shell Scripting: Loops, Arguments & Error Handling

## Task 1: For Loop
1. Create `for_loop.sh` that:
   - Loops through a list of 5 fruits and prints each one
   
   [script for_loop.sh](scripts/for_loop.sh)
   
   ![snapshot](images/IMAGE1.png)


   2. Create `count.sh` that:
   - Prints numbers 1 to 10 using a for loop
   
   [Here is the script count.sh](scripts/count.sh)
   
   ![snapshot](images/IMAGE2.png)

   ## Task 2: While Loop
1. Create `countdown.sh` that:
   - Takes a number from the user
   - Counts down to 0 using a while loop
   - Prints "Done!" at the end

   [Here is the script countdown.sh](scripts/countdown.sh)
   
   ![snapshot](images/IMAGE3.png)


   ## Task 3: Command-Line Arguments
1. Create `greet.sh` that:
   - Accepts a name as `$1`
   - Prints `Hello, <name>!`
   - If no argument is passed, prints "Usage: ./greet.sh <name>"
   
   [Here is the script greet.sh](scripts/greet.sh)
   
   ![snapshot](images/IMAGE4.png)

2. Create `args_demo.sh` that:
   - Prints total number of arguments (`$#`)
   - Prints all arguments (`$@`)
   - Prints the script name (`$0`)
   
   [Here is the script args_demo.sh](scripts/args_demo.sh)
   
   ![snapshot](images/IMAGE5.png)


   ## Task 4: Install Packages via Script
1. Create `install_packages.sh` that:
   - Defines a list of packages: `nginx`, `curl`, `wget`
   - Loops through the list
   - Checks if each package is installed (use `dpkg -s` or `rpm -q`)
   - Installs it if missing, skips if already present
   - Prints status for each package
   
   [Here is the script install_packages.sh](scripts/install_packages.sh)
   
   ![snapshot](images/IMAGE6.png)


   