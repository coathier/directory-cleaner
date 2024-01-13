# Directory-cleaner
A shell script made to move all files from subdirectories to specified parent folder with a prefix of previous subfolder. 

There's both a bash and a batch script for windows although I would say that the batch script is highly unpredictable regarding file namings.

## Usage:
### Linux
```console
$ ./collect_directory.sh <specify directory>
```

### Windows
```console
> .\collect_directory.bat <specity directory>
```

If you are using this batch script avoid file/directory namings with spaces and don't use full file path! 
