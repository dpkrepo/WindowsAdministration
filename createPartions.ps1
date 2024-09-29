# Define the disk number and partition size
$diskNumber = 1
$partitionSizeGB = 30

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


