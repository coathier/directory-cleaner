# Directory-Cleaner
A shell script that moves all files from subdirectories of a specified parent folder to it with a prefix of previous subfolder. 

There's a bash for Linux and a batch script for Windows although I would say that the batch (Windows) script is highly unpredictable regarding file namings and directory paths.

## Usage:
### Linux
```console
$ ./collect_directory.sh <specify directory>
```

### Windows
```console
> .\collect_directory.bat <specify directory>
```

If you are using this batch script avoid file/directory namings with spaces and don't use full file path! 
