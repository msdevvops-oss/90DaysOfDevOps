# Day 13 - Linux Volume Management (LVM)

## Task 
Learn LVM to manage storage flexibly – create, extend, and mount volumes.


## Task 1: Check Current Storage 
Run: `lsblk`, `pvs`, `vgs`, `lvs`, `df -h`

![snapshot](IMAGE/IMG1.png)

## Task 2: Create Physcial Volume

![snapshot](IMAGE/IMG2.png)

## Task 3: Create Volume Group

![snapshot](IMAGE/IMG3.png)

## Task 4: Create Logical Volume 

![snapshot](IMAGE/IMG4.png)

## Task 5: Format and Mount 

![snapshot](IMAGE/IMG5.png)

## Task 6: Extend the Volume

![snapshot](IMAGE/IMG6.png)

## Task 7: Mounting PV Directly

![snapshot](IMAGE/IMG7.png)

## Commands Used

* `lsblk` - List block devices and their mount
* `df -h` - Show mounted filesystem usage
* `pvcreate /dev/sdb` - Initialize partition as PV
* `pvs` - List all PVs
* `vgcreate vg_name /dev/sdb` - Create a VG from PVs
* `vgs` - List all VGs
* `lvcreate -n lv_name -L 5G vg_name` - Create LV of 5GB
* `lvextend -L +2G /dev/vg_name/lv_name` - Extend LV by 2GB
* `lvs` - List all LVs
* `mkfs.ext4 /dev/vg_name/lv_name` - Create ext4 filesystem
* `mount /dev/vg_name/lv_name /mnt/data` - Mount created LV
* `resize2fs /dev/vg_name/lv_name` - Resize ext2/3/4 filesystem
* `mkfs -t ext4 /dev/sdb /mnt/data` - Directly mount PV

## What I learned

- Storage hierarchy
- Using LVM to Create and Mount storage
- Filesystem Resizing




