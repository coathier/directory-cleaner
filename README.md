# Directory-Cleaner
A shell script that moves all files from subdirectories of a specified parent folder to it with a prefix of previous subfolder. 

There's a bash for Linux and a batch script for Windows although I would say that the batch (Windows) script is highly unpredictable regarding file namings and directory paths. 

## Example
Here's an example of what this script does. 

### From this:
> Parent Directory  
> ├─Hello.md  
> │  
> ├─── Red  
> │    │  
> │    └─── Dragon  
> │         └─Master.txt  
> │  
> └─── Blue  
>      └─Dragon.png  

### To this:
```
> Parent Directory
> ├─Hello.md
> ├─Red_Dragon_Master.txt
> └─Blue_Dragon.png
```

## Usage
### Linux
```console
$ ./collect_directory.sh <specify directory>
```

### Windows
I highly advise against using this script it might remove everything! 
```console
> .\collect_directory.bat <specify directory>
```

If you are using this batch script avoid file/directory namings with spaces and don't use full file path! 

## Contribute
If you are finding this somewhat useful please feel free to contribute. The batch file was thrown toghether quickly, without any knowledge of batch scripting.  
