# This powershell Script generate a GPT Style, Each of PartitionE:(E) to PartitionS:(S) are 30GB in size. You can modify according to your need.
# Define the disk number and partition size
$diskNumber = 1                #change according to your disk Number
$partitionSizeGB = 30          # Your requirement      

# Define the drive letters
$driveLetters = 'E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S'      

# Get the disk object
$disk = Get-Disk -Number $diskNumber

# Initialize the disk if it's not already initialized
if ($disk.PartitionStyle -eq 'RAW') {
    Initialize-Disk -Number $diskNumber -PartitionStyle GPT
}

# Create partitions and assign drive letters
foreach ($driveLetter in $driveLetters) {
    $partition = New-Partition -DiskNumber $diskNumber -Size ($partitionSizeGB * 1GB) -AssignDriveLetter:$false
    Add-PartitionAccessPath -DiskNumber $diskNumber -PartitionNumber $partition.PartitionNumber -AccessPath "$($driveLetter):\"
    Format-Volume -DriveLetter $driveLetter -FileSystem NTFS -NewFileSystemLabel "Partition$driveLetter"
}


