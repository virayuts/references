####################
# File System
####################

# File System
# - It organizes its files and directories in a hierarchical directory structure (tree-like pattern)
#   - The first directory at the top is called root directory
#       - It is denoted by `/`
# - It has a single file system tree
#   - Additional storage devices are mounted at various points on the tree
# - It has no concept of file extension
# - Everything in linux can be considered as a file ,e.g., devices, etc.

# Home Directory
# - Each user is given a directory in the file system where they are alllowed to write files
# - It usually is the current working directory when the user is first logged in
# - It usually contains account and applications configuration files
# - It is denoted by `~`

# File Name
# - File name beginning with `.` is hidden
# - File name is case sensitive
# - File name may contain embedded spaces and punctuation characters
#   - It is prefer to use only period, dash, underscore and avoid embedded space

# Path Name
# - It represents the location of the file or directory in the file system tree
# - It can be specified in two ways
#   - Absolute
#       - It starts with the root directory
#       - e.g., /usr/bin
#   - Relative
#       - It starts with the current working directory and it provides two special notation
#           - `.`   (current working directory) (implied by default and can be omitted)
#           - `..`  (current working directory's parent directory)
#       - e.g., ../usr, ./bin, bin

####################
# File Structure
####################

# File System Structure
# - `/bin`          (binaries/programs for system)
# - `/boot`         (linux kernel and boot loader)
# - `/dev`          (devices)
# - `/etc`          (system configuration)
# - `/home`         (user home directories)
# - `/lib`          (shared library files)
# - `/lost+found`   (partial recovery from file system corruption event)
# - `/media`        (mount point for removable media that are automatically mounted)
# - `/mnt`          (mount point for removable media that are mounted manually)
# - `/opt`          (optional software)
# - `/proc`         (virtual file system representing kernel)
# - `/root`         (home directory for root account)
# - `/sbin`         (system binary for superuser)
# - `/tmp`          (temporary files)
# - `/usr`          (programs and files for regular user)
# - `/var`          (data that are likely to change a lot)

# Configuration File
# - `/etc/crontab`  (defines automated jobs)
# - `/etc/fstab`    (defines storage devices and their mount points)
# - `/etc/passwd`   (defines all system's user account)

####################
# File Link
####################

# Symbolic Link
# - It is a way to provide multiple names for a file
# - It will reference the original file when used

####################
# File Command
####################

# Displaying Current Working Directory
pwd

# Changing Current Working Directory
# - Omitting path name changes to home directory
# - Additional character can be used as path name as well
#   - `-`           (changes to previous working directory)
#   - `~user_name`  (changes to the specified user's home directory)
cd PATH_NAME

# Displaying Directory's Content
# - Omitting path name displays current working directory's content
# - Multiple pathname can be specified
ls PATH_NAME
    -a                  # display hidden files
    -A                  # display hidden files but without the `.` and `..`
    -d                  # display the directory itself rather than its content, use in conjuction with -l
    -F                  # display indicator character at the end of the listed name
    -h                  # display file size in human readable format rather than in bytes
    -l                  # display results in long format (more detailed)
    -r                  # display results in reverse order (default is alphabetical order)
    -S                  # display results sorted by file size
    -t                  # display results sorted by modification time

# Long Format
# - It displays the result with
#   - Access Right
#       - First character indicates the type of file
#           - `-` (regular file)
#           - `d` (directory)
#           - `l` (symbolic link)
#       - The next sets of three character are the access right for file's owner, group's member
#         and everybody else which includes the following action
#           - `r` (read)
#           - `w` (write)
#           - `x` (execution)
#           - If `-` is in place of any of the action, it specifies no permission to perform that action
#   - Number of File's Hard Links or
#     Number of Directory's Content
#   - User                          (file/directory's owner username)
#   - Group                         (group name that owns the file/directory)
#   - File/Directory Size           (bytes)
#   - DateTime of Last Modification
#   - File/Directory Name
-rw-r--r-- 1 root root 32059 2017-04-03 11:05 file.pdf

# Displaying File Type Description
file FILE_NAME

# Displaying Text File (page-by-page manner)
# - Its navigation includes
#   - `b`       (scroll back)
#   - `space`   (scroll forward)
#   - `g`       (move to beginning of file)
#   - `G`       (move to end of file)
#   - `/chars`  (search forward for characters)
#   - `n`       (search for next occurence of previous search)
#   - `q`       (quit viewing)
less FILE_NAME
