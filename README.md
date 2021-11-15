<h1 align="center">Batch Script - Commands</h1>

| Command | Explanation |
| --- | --- |
| CD  | helps in making changes to a different directory, or displays the current directory. | 
| CLS | clears the screen. | 
| COPY | is used for copying files from one location to the other. | 
| DEL | deletes files and not directories. | 
| DIR | lists the contents of a directory. | 
| DATE | help to find the system date. | 
| ECHO | displays messages, or turns command echoing on or off. | 
| EXIT | exits the DOS console. | 
| MD | creates a new directory in the current location. | 
| MOVE | moves files or directories between directories. | 
| PATH | displays or sets the path variable. | 
| PAUSE | prompts the user and waits for a line of input to be entered. | 
| PROMPT | can be used to change or reset the cmd.exe prompt. | 
| RD | removes directories, but the directories need to be empty before they can be removed.
| REN | Renames files and directories | 
| REM | is used for remarks in batch files, preventing the content of the remark from being executed. | 
| START | starts a program in new window, or opens a document. | 
| TIME | sets or displays the time. | 
| TYPE | prints the content of a file or files to the output. | 
| VOL | displays the volume labels.
| ATTRIB | Displays or sets the attributes of the files in the curret directory | 
| CHKDSK | checks the disk for any problems. | 
| CHOICE | provides a list of options to the user. | 
| CMD | invokes another instance of command prompt. | 
| COMP | compares 2 files based on the file size. | 
| CONVERT | converts a volume from FAT|  or FAT|  file system to NTFS file system. |
| DRIVERQUERY | shows all installed device drivers and their properties. | 
| EXPAND | extracts files from compressed .cab cabinet files. | 
| FIND | searches for a string in files or input, outputting matching lines. | 
| FORMAT | formats a disk to use Windows-supported file system such as FAT, FAT|  or NTFS, thereby overwriting the previous content of the disk. |
| HELP | shows the list of Windows-supplied commands. | 
| 	IPCONFIG | displays Windows IP Configuration. Shows configuration by connection and the name of that connection. | 
| 	LABEL | adds, sets or removes a disk label. | 
| 	MORE | displays the contents of a file or files, one screen at a time. | 
| 	NET | Provides various network services, depending on the command used. | 
| 	PING | sends ICMP/IP "echo" packets over the network to the designated address. | 
| 	SHUTDOWN | shuts down a computer, or logs off the current user. | 
| 	SORT | takes the input from a source file and sorts its contents alphabetically, from A to Z or Z to A. It prints the output on the console. | 
| 	SUBST | assigns a drive letter to a local folder, displays current assignments, or removes an assignment.
| 	SYSTEMINFO | shows configuration of a computer and its operating system. | 
| 	TASKKILL | ends one or more tasks. | 
| 	TASKLIST | lists tasks, including task name and process id (PID). | 
| 	XCOPY | copies files and directories in a more advanced way. | 
| 	TREE | displays a tree of all subdirectories of the current directory to any level of recursion or depth. | 
| 	FC | lists the actual differences between two files. | 
| 	DISKPART | shows and configures the properties of disk partitions. | 
| 	TITLE | sets the title displayed in the console window. | 
| 	SET | Displays the list of environment variables on the current system |

## Command Line Arguments
Batch scripts support the concept of command line arguments wherein arguments can be passed to the batch file when invoked. The arguments can be called from the batch files through the variables %1, %2, %3, and so on.

## Strings

### check if empty String

`` if [%a%]==[] echo "String A is empty"  ``

## Array

### Creating an Array
An array is created by using the following set command.

set a[0]=1
Where 0 is the index of the array and 1 is the value assigned to the first element of the array.

Another way to implement arrays is to define a list of values and iterate through the list of values. The following example show how this can be implemented.

Example
```
@echo off 
set list=1 2 3 4 
(for %%a in (%list%) do ( 
   echo %%a 
))
```

### iterating with range

```
for /l %%n in (0,1,5) do ( 
   echo !topic[%%n]! 
)
```
Following things need to be noted about the above program −
 - Each element of the array needs to be specifically defined using the set command.
 - The ‘for’ loop with the /L parameter for moving through ranges is used to iterate through the array.

## decision making

### if condition

Syntax: `if(condition) (do_something)`

### else/if condition

Syntax: `If (condition) (do_something) ELSE (do_something_else)`

## Operators

### Arithmetic Operators
Batch script language supports the normal Arithmetic operators as any language. Following are the Arithmetic operators available.

| Operator | Description |	Example|
|--- | --- | --- |
| +  | Addition of two operands | 	1 + 2 will give 3|
| −  | Subtracts second operand from the first | 	2 − 1 will give 1|
| *  | Multiplication of both operands | 	2 * 2 will give 4|
| /  | Division of the numerator by the denominator	 | 3 / 2 will give 1.5|
| %  | Modulus operator and remainder of after an integer/float division | 	3 % 2 will give 1|


### Relational Operators
Relational operators allow of the comparison of objects. Below are the relational operators available.

| Operator | 	Description | 	Example|
| --- | --- | --- |
| EQU | 	Tests the equality between two objects | 	2 EQU 2 will give true|
| NEQ | 	Tests the difference between two objects | 	3 NEQ 2 will give true|
| LSS | 	Checks to see if the left object is less than the right operand	 | 2 LSS 3 will give true|
| LEQ | 	Checks to see if the left object is less than or equal to the right operand	 | 2 LEQ 3 will give true|
| GTR | 	Checks to see if the left object is greater than the right operand	 | 3 GTR 2 will give true|
| GEQ | 	Checks to see if the left object is greater than or equal to the right operand	 | 3 GEQ 2 will give true |

### Logical Operators
Logical operators are used to evaluate Boolean expressions. Following are the logical operators available.

The batch language is equipped with a full set of Boolean logic operators like AND, OR, XOR, but only for binary numbers. Neither are there any values for TRUE or FALSE. The only logical operator available for conditions is the NOT operator.

| Operator | 	Description|
| --- | --- |
| AND | 	This is the logical “and” operator|
| OR | 	This is the logical “or” operator|
| NOT | 	This is the logical “not” operator | 

### Assignment Operators
Batch Script language also provides assignment operators. Following are the assignment operators available.

| Operator  | 	Description | 	Example | 
| ---  | --- | --- | 
| +=  | This adds right operand to the left operand and assigns the result to left operand | set /A a = 5 <br> a += 3 <br> Output will be 8 | 
| -= | This subtracts the right operand from the left operand and assigns the result to the left operand | Set /A a = 5 <br>a -= 3 <br> Output will be 2 | 
| *= | This multiplies the right operand with the left operand and assigns the result to the left operand | Set /A a = 5 <br> a *= 3 <br> Output will be 15 | 
| /= | This divides the left operand with the right operand and assigns the result to the left operand	 | Set /A a = 6 <br> a/ = 3 <br>Output will be 2 | 
| %= | This takes modulus using two operands and assigns the result to the left operand	 | 
Set /A a = 5 <br> a% = 3 <br>Output will be 2 | 

#### Bitwise Operators
Bitwise operators are also possible in batch script. Following are the operators available.

| Operator | Description|
| --- | --- |
| &	| This is the bitwise “and” operator |
| |	| This is the bitwise “or” operator |
| ^	| This is the bitwise “xor” or Exclusive or operator |

Following is the truth table showcasing these operators.

| p  | 	q | p & q |	p \| q	| p ^ q |
| --- | --- | --- | --- | --- | 
| 0  | 	0 | 0	 | 0 | 	0 | 
| 0  | 	1 | 0	 | 1 | 	1 | 
| 1  | 	1 | 1	 | 1 | 	0 | 
| 1  | 	0 | 0	 | 1 | 	1 | 

## DATE and TIME

We can use `DATE` and `TIME` to get and set TIME and Date

## Input / Output

### Redirecting Output (Stdout and Stderr)
One common practice in batch files is sending the output of a program to a log file. The > operator sends, or redirects, stdout or stderr to another file. The following example shows how this can be done.

`Dir C:\ > list.txt`

In the above example, the stdout of the command Dir C:\ is redirected to the file list.txt.

If you append the number 2 to the redirection filter, then it would redirect the stderr to the file lists.txt.

`Dir C:\ 2> list.txt`

One can even combine the stdout and stderr streams using the file number and the ‘&’ prefix. Following is an example.

`DIR C:\ > lists.txt 2>&1`

### Suppressing Program Output
The pseudo file NUL is used to discard any output from a program. The following example shows that the output of the command DIR is discarded by sending the output to NUL.

`Dir C:\ > NUL`

## Return codes

| Code | 	Description |
| --- | --- |
| 0 |	Program successfully completed. |
| 1 |	Incorrect function. Indicates that Action has attempted to execute non-recognized command in Windows command prompt cmd.exe. |
| 2 |	The system cannot find the file specified. Indicates that the file cannot be found in specified location. |
| 3 |	The system cannot find the path specified. Indicates that the specified path cannot be found. |
| 5 |	Access is denied. Indicates that user has no access right to specified resource. |
| 9009 <br> 0x2331 | Program is not recognized as an internal or external command, operable program or batch file. Indicates that command, application name or path has been misspelled when configuring the Action. |
| 221225495 <br> 0xC0000017 <br>-1073741801 | Not enough virtual memory is available. <br> It indicates that Windows has run out of memory. |
| 3221225786<br> 0xC000013A<br>-1073741510 | The application terminated as a result of a CTRL+C. Indicates that the application has been terminated either by the user's keyboard input CTRL+C or CTRL+Break or closing command prompt window. |
| 3221225794 <br>0xC0000142 <br>-1073741502 | The application failed to initialize properly. Indicates that the application has been launched on a Desktop to which the current user has no access rights. Another possible cause is that either gdi32.dll or user32.dll has failed to initialize.

### Error Level

The environmental variable %ERRORLEVEL% contains the return code of the last executed program or script.

By default, the way to check for the ERRORLEVEL is via the following code.

Syntax:
```
IF %ERRORLEVEL% NEQ 0 ( 
   DO_Something 
)
```

It is common to use the command EXIT /B %ERRORLEVEL% at the end of the batch file to return the error codes from the batch file.

EXIT /B at the end of the batch file will stop execution of a batch file.

Use EXIT /B < exitcodes > at the end of the batch file to return custom return codes.

## Loops

### while

no while loop inbuilt. But we can manage it with the code

Syntax:
```bat
@echo off
SET /A "index = 1"
SET /A "count = 5"
:while
if %index% leq %count% (
   echo The value of index is %index%
   SET /A "index = index + 1"
   goto :while
)
```
### for

Syntax:
```bat
@echo off 
FOR %%F IN (1 2 3 4 5) DO echo %%F
```
we can use range with for loop
Syntax:
```bat
FOR /L %%variable IN (lowerlimit,Increment,Upperlimit) DO do_something
```
## Functions

Syntax:
```bat
:function_name 
Do_something 
EXIT /B 0
```
### Calling a Function
Syntax:
```bat
call :function_name
```

### Functions with parameters
Functions can work with parameters by simply passing them when a call is made to the function.

Syntax
```bat
Call :function_name parameter1, parameter2… parametern
```
Example
```bat
@echo off
SETLOCAL
CALL :Display 5 , 10
EXIT /B %ERRORLEVEL%
:Display
echo The value of parameter 1 is %~1
echo The value of parameter 2 is %~2
EXIT /B 0
```
As seen in the above example, ~1 is used to access the first parameter sent to the function, similarly ~2 is used to access the second parameter.

### Functions with return
Functions can work with return values by simply passing variables names which will hold the return values when a call is made to the function as shown below

Syntax
```bat
Call :function_name value1, value2… valuen
```
Example
```bat
@echo off
SETLOCAL
CALL :SetValue value1,value2
echo %value1%
echo %value2%
EXIT /B %ERRORLEVEL%
:SetValue
set "%~1 = 5"
set "%~2 = 10"
EXIT /B 0
```
### Local Variables in Functions

Local variables in functions can be used to avoid name conflicts and keep variable changes local to the function. The SETLOCAL command is first used to ensure the command processor takes a backup of all environment variables. The variables can be restored by calling ENDLOCAL command. Changes made in between are local to the current batch script. ENDLOCAL is automatically called when the end of the batch file is reached, i.e. by calling GOTO:EOF.

Localizing variables with SETLOCAL allows using variable names within a function freely without worrying about name conflicts with variables used outside the function.

Example
```bat
@echo off
set str = Outer
echo %str%
CALL :SetValue str
echo %str%
EXIT /B %ERRORLEVEL%
:SetValue
SETLOCAL
set str = Inner
set "%~1 = %str%"
ENDLOCAL
EXIT /B 0
```
### Files I/O

#### Creating Files

The creation of a new file is done with the help of the redirection filter >. This filter can be used to redirect any output to a file. Following is a simple example of how to create a file using the redirection command.

Example
```bat
@echo off
echo "Hello">C:\new.txt
```
#### Writing to files

Content writing to files is also done with the help of the redirection filter >. This filter can be used to redirect any output to a file. Following is a simple example of how to create a file using the redirection command to write data to files.

Example
```bat
@echo off
dir C:\>C:\new.txt
```

#### Appending to Files
Content writing to files is also done with the help of the double redirection filter >>. This filter can be used to append any output to a file. Following is a simple example of how to create a file using the redirection command to append data to files.

Example
```bat
@echo off
echo "This is the directory listing of C:\ Drive">C:\new.txt
dir C:\>>C:\new.txt
```

#### Reading from files

Reading of files in a Batch Script is done via using the FOR loop command to go through each line which is defined in the file that needs to be read. Since there is a no direct command to read text from a file into a variable, the ‘for’ loop needs to be used to serve this purpose.

Example
```bat
@echo off
FOR /F "tokens=* delims=" %%x in (new.txt) DO echo %%x
```
The delims parameter is used to break up the text in the file into different tokens or words. Each word or token is then stored in the variable x. For each word which is read from the file, an echo is done to print the word to the console output.
#### Deleting Files

Syntax
```bat
DEL [/P] [/F] [/S] [/Q] [/A[[:]attributes]] names
```
Following are the description of the options which can be presented to the DEL command.

| S.No. |	Options | Description |
| --- | --- | --- |
| 1. | Names | Specifies a list of one or more files or directories. Wildcards may be used to delete multiple files. If a directory is specified, all files within the directory will be deleted | 
| 2.	  | /P  | Prompts for confirmation before deleting each file. |
| 3.	  | /F  | Force deletes of read-only files. |
| 4.	  | /S  | Deletes specified files from all subdirectories. |
| 5.	  | /Q  | Quiet mode, do not ask if ok to delete on global wildcard. |
| 6.	  | /A  | Selects files to delete based on attributes. |
| 7.	  | attributes  | R Read-only files, S System files, H Hidden files, A Files ready for archiving - Prefix meaning not |

#### Renaming Files

Syntax
```bat
RENAME [drive:][path][directoryname1 | filename1] [directoryname2 | filename2]
```
#### Moving Files

Syntax
```bat
MOVE [/Y | /-Y] [drive:][path]filename1[,...] destination
```

Following are the description of the options which can be presented to the DEL command.

| S.No. |	Options | Description |
| --- | --- | --- |
| 1.	| [drive:][path]filename1| Specifies the location and name of the file or files you want to move |
| 2.	| destination| Specifies the new location of the file. Destination can consist of a drive letter and colon, a directory name, or a combination. If you are moving only one file, you can also include a filename if you want to rename the file when you move it. |
| 3.	| [drive:][path]dirname1 | Specifies the directory you want to rename. |
| 4.	| dirname2 | Specifies the new name of the directory. |
| 5.	| /Y | Suppresses prompting to confirm you want to overwrite an existing destination file. |
| 6.	| /-Y | Causes prompting to confirm you want to overwrite an existing destination file. |

#### Moving File

Syntax
```bat
MOVE [/Y | /-Y] [drive:][path]filename1[,...] destination
```

Following are the description of the options which can be presented to the DEL command.

| S.No. |	Options | Description |
| --- | --- | --- |
| 1.	| [drive:][path]filename1 | Specifies the location and name of the file or files you want to move |
| 2.	| destination | Specifies the new location of the file. Destination can consist of a drive letter and colon, a directory name, or a combination. If you are moving only one file, you can also include a filename if you want to rename the file when you move it. |
| 3.	| [drive:][path]dirname1 | Specifies the directory you want to rename. |
| 4.	| dirname2 | Specifies the new name of the directory. |
| 5.	| /Y | Suppresses prompting to confirm you want to overwrite an existing destination file. |
| 6.	| /-Y | Causes prompting to confirm you want to overwrite an existing destination file.

#### Files Pipes

The pipe operator (|) takes the output (by default, STDOUT) of one command and directs it into the input (by default, STDIN) of another command. For example, the following command sorts the contents of the directory C:\

`dir C:\ | sort`

In this example, both commands start simultaneously, but then the sort command pauses until it receives the dir command's output. The sort command uses the dir command's output as its input, and then sends its output to handle 1 (that is, STDOUT).

Following is another example of the pipe command. In this example, the contents of the file C:\new.txt are sent to the sort command through the pipe filter.
```bat
@echo off 
TYPE C:\new.txt | sort
```
#### Files Input

When a batch file is run, it gives you the option to pass in command line parameters which can then be read within the program for further processing. The batch files parameters can be recalled from within the program using the % operator along with the numeric position of the parameter. Following is how the command line parameters are defined.

+ %0 is the program name as it was called.
+ %1 is the first command line parameter.
+ %2 is the second command line parameter.
+ So on till %9.

Let’s take a look at a simple example of how command line parameters can be used.

#### Shift

As you can see from the above output, the final value which should be shown as ‘j’ is being shown as a0. This is because there is no parameter known as %10.

This limitation can be avoided by using the SHIFT operator. After your batch file handled its first parameter(s) it could SHIFT them (just insert a line with only the command SHIFT), resulting in %1 getting the value B, %2 getting the value C, etcetera, till %9, which now gets the value J. Continue this process until at least %9 is empty.

Let’s look at an example of how to use the SHIFT operator to overcome the limitation of command line arguments.

Example
```bat
@ECHO OFF
:Loop

IF "%1"=="" GOTO Continue
   echo %1%
SHIFT
GOTO Loop
:Continue
```

Example
```bat
@echo off
echo The first parameter is %1
echo The second parameter is %2
echo The third parameter is %3
```

Note

Some characters in the command line are ignored by batch files, depending on the DOS version, whether they are "escaped" or not, and often depending on their location in the command line −
+ Commas (",") are replaced by spaces, unless they are part of a string in doublequotes.
+ Semicolons (";") are replaced by spaces, unless they are part of a string in doublequotes.
+ "=" characters are sometimes replaced by spaces, not if they are part of a string in doublequotes.
+ The first forward slash ("/") is replaced by a space only if it immediately follows the command, without a leading space.
+ Multiple spaces are replaced by a single space, unless they are part of a string in doublequotes.
+ Tabs are replaced by a single space.
+ Leading spaces before the first command line argument are ignored.
+ Trailing spaces after the last command line argument are trimmed.

### Folder

#### Folder creating

Syntax
```bat
MKDIR [drive:]path 
MD [drive:]path
```

#### Listing 

Syntax
```batDIR [drive:][path][filename] [/A[[:]attributes]] [/B] [/C] [/D] [/L] [/N] 
[/O[[:]sortorder]] [/P] [/Q] [/R] [/S] [/T[[:]timefield]] [/W] [/X] [/4]
```

| S.No. | 	Options | Description |
| --- | --- | --- |
| 1.	 | [drive:][path][filename] | Specifies drive, directory, or files to list |
| 2.	 | /A | Displays files with specified attributes. |
| 3.	 | attributes | D - Directories R - Read-only files <br> H - Hidden files A - Files ready for archiving <br> S - System files I - Not content indexed files <br> L - Reparse Points - Prefix meaning not |
| 4.	 | /B | Uses bare format (no heading information or summary). 
| 5.	 | /C | Displays the thousand separator in file sizes. This is the default. Use /-C to disable the display of the separator. |
| 6.	 | /D | Same as wide but files are list sorted by column. |
| 7.	 | /L | Uses lowercase. |
| 8.	 | /N | New long list format where filenames are on the far right. |
| 9.	 | /O | Lists by files in sorted order. |
| 10. | sortorder | N By name (alphabetic), S By size (smallest first), E By extension (alphabetic), D By date/time (oldest first), G Group directories first - Prefix to reverse order
| 11.	 | /P | Pauses after each screen is full of information. |
| 12.	 | /Q  | Displays the owner of the file. |
| 13.	 | /R | Displays alternate data streams of the file. |
| 14.	 | /S | Displays files in the specified directory and all subdirectories. |
| 15.	 | /T | Controls what time field is displayed or used for sorting. |
| 16.	 | timefield | C - Creation <br>A - Last Access <br>W - Last Written
| 17.	 | /W | Uses wide list format. |
| 18.	 | /X |
| This displays the short names generated for non-8dot3 file names. The format is that of /N with the short name inserted before the long name. If no short name is present, blanks are displayed in its place. |
| 19.	 | /4 | Displays four-digit years. |

#### Deleting folders

Syntax
```bat
DEL [/P] [/F] [/S] [/Q] [/A[[:]attributes]] names
```

Following are the description of the options which can be presented to the DEL command.

| S.No. | Options | Description |
| --- | --- | --- |
| 1.	 | Names | Specifies a list of one or more files or directories. Wildcards may be used to delete multiple files. If a directory is specified, all files within the directory will be deleted |
| 2. | /P | Prompts for confirmation before deleting each file. |
| 3.	 | /F | Force deletes read-only files. |
| 4.	 | /S | Deletes specified files from all subdirectories. |
| 5.	 | /Q | Quiet mode, do not ask if ok to delete on global wildcard. |
| 6.	 | /A | Selects files to delete based on attributes. |
| 7.	 | attributes | R - Read-only files, S - System files, H - Hidden files, A - Files ready for archiving - Prefix meaning not |

### Renaming Folders

Syntax
```bat
RENAME [drive:][path][directoryname1 | filename1] [directoryname2 | filename2]
```

### Moving Folders

Syntax
```bat 
MOVE [/Y | /-Y] [drive:][path]filename1[,...] destination
```

Following are the description of the options which can be presented to the DEL command.

| S.No.	| Options | Description |
| --- | --- | --- |
| 1.	 | [drive:][path]filename1 | Specifies the location and name of the file or files you want to move |
| 2.	 | destination | Specifies the new location of the file. Destination can consist of a drive letter and colon, a directory name, or a combination. If you are moving only one file, you can also include a filename if you want to rename the file when you move it. |
| 3.	 | [drive:][path]dirname1 | Specifies the directory you want to rename. |
| 4.	 | dirname2 | Specifies the new name of the directory. |
| 5.	 | /Y | Suppresses prompting to confirm you want to overwrite an existing destination file. |
| 6.	 | /-Y | Causes prompting to confirm you want to overwrite an existing destination file. |

## Process

### Tasklist

Syntax
```bat
TASKLIST [/S system [/U username [/P [password]]]] [/M [module] | /SVC | /V] [/FI filter]
[/FO format] [/NH]
```
| S.No. |	Options | Description |
| --- | --- | --- |
| 1.	 | /S system | Specifies the remote system to connect to |
| 2.	 | /U | [domain\]user | Specifies the user context under which the command should execute. |
| 3.	 | /P [password] | Specifies the password for the given user context. Prompts for input if omitted. |
| 4.	 | /M [module] | Lists all tasks currently using the given exe/dll name. If the module name is not specified all loaded modules are displayed. |
| 5.	 | /SVC | Displays services hosted in each process. |
| 6.	 | /V | Displays verbose task information. |
| 7.	 | /FI filter | Displays a set of tasks that match a given criteria specified by the filter. |
| 8.	 | /FO format | Specifies the output format. Valid values: "TABLE", "LIST", "CSV". |
| 9.	 | /NH | Specifies that the "Column Header" should not show in the output. Valid only for "TABLE" and "CSV" formats. |

### Killing a Particular Process
Allows a user running Microsoft Windows XP professional, Windows 2003, or later to kill a task from a Windows command line by process id (PID) or image name. The command used for this purpose is the TASKILL command.

Syntax
```
TASKKILL [/S system [/U username [/P [password]]]] { [/FI filter] 
[/PID processid | /IM imagename] } [/T] [/F]
```

| S.No.	| Options | Description |
| --- | --- | --- |
| 1.	 | /S | system <br> Specifies the remote system to connect to |
| 2.	 | /U | [domain\]user <br>  Specifies the user context under which the command should execute. |
| 3.	 | /P [password] | Specifies the password for the given user context. Prompts for input if omitted. |
| 4.	 | /FI | FilterName <br> Applies a filter to select a set of tasks. Allows "*" to be used. ex. imagename eq acme* See below filters for additional information and examples. |
| 5.	 | /PID | processID <br> Specifies the PID of the process to be terminated. Use TaskList to get the PID. |
| 6.	 | /IM | ImageName <br> Specifies the image name of the process to be terminated. Wildcard '*' can be used to specify all tasks or image names. |
| 7.	 | /T | Terminates the specified process and any child processes which were started by it. |
| 8.	 | /F | Specifies to forcefully terminate the process(es). |

### Starting a New Process
DOS scripting also has the availability to start a new process altogether. This is achieved by using the START command.

Syntax
```bat
START "title" [/D path] [options] "command" [parameters]
```
Wherein
+ title − Text for the CMD window title bar (required.)
+ path − Starting directory.
+ command − The command, batch file or executable program to run.
+ parameters − The parameters passed to the command.

Following are the description of the options which can be presented to the START command.

| S.No.	| Options | Description |
| --- | --- | --- |
| 1.	 | /MIN | Start window Minimized |
| 2.	 | /MAX | Start window maximized. |
| 3.	 | /LOW | Use IDLE priority class. |
| 4.	 | /NORMAL | Use NORMAL priority class. |
| 5.	 | /ABOVENORMAL | Use ABOVENORMAL priority class. |
| 6.	 | /BELOWNORMAL | Use BELOWNORMAL priority class. |
| 7.	 | /HIGH | Use HIGH priority class. |
| 8.	 | /REALTIME | Use REALTIME priority class.

## Aliases

### Creating an Alias
Alias are managed by using the doskey command.

Syntax
```bat
DOSKEY [options] [macroname=[text]]
```

Wherein
+ macroname − A short name for the macro.
+ text − The commands you want to recall.

Following are the description of the options which can be presented to the DOSKEY command.

| S.No. |	Options | Description |
| --- | --- | --- |
| 1.	 | /REINSTALL | Installs a new copy of Doskey |
| 2.	 | /LISTSIZE = size | Sets size of command history buffer. |
| 3.	 | /MACROS | Displays all Doskey macros. |
| 4.	 | /MACROS:ALL | Displays all Doskey macros for all executables which have Doskey macros. |
| 5.	 | /MACROS:exename | Displays all Doskey macros for the given executable. |
| 6.	 | /HISTORY | Displays all commands stored in memory. |
| 7.	 | /INSERT | Specifies that new text you type is inserted in old text. |
| 8.	 | /OVERSTRIKE | Specifies that new text overwrites old text. |
| 9.	 | /EXENAME = exename | Specifies the executable. |
| 10.	 | /MACROFILE = filename | Specifies a file of macros to install. |
| 11. | macroname | Specifies a name for a macro you create. |
| 12. | text | Specifies commands you want to record. |

Example

Create a new file called keys.bat and enter the following commands in the file. The below commands creates two aliases, one if for the cd command, which automatically goes to the directory called test. And the other is for the dir command.
```bat
@echo off
doskey cd = cd/test
doskey d = dir
```

### Deleting an Alias
An alias or macro can be deleted by setting the value of the macro to NULL.

Example
```bat
@echo off
doskey cd = cd/test
doskey d = dir
d= 
```

In the above example, we are first setting the macro d to d = dir. After which we are setting it to NULL. Because we have set the value of d to NULL, the macro d will deleted.

### Replacing an Alias
An alias or macro can be replaced by setting the value of the macro to the new desired value.

Example
```bat
@echo off
doskey cd = cd/test
doskey d = dir

d = dir /w
```

## Devices

Windows now has an improved library which can be used in Batch Script for working with devices attached to the system. This is known as the device console – DevCon.exe.

Windows driver developers and testers can use DevCon to verify that a driver is installed and configured correctly, including the proper INF files, driver stack, driver files, and driver package. You can also use the DevCon commands (enable, disable, install, start, stop, and continue) in scripts to test the driver. DevCon is a command-line tool that performs device management functions on local computers and remote computers.

Display driver and device info DevCon can display the following properties of drivers and devices on local computers, and remote computers (running Windows XP and earlier) −

Hardware IDs, compatible IDs, and device instance IDs. These identifiers are described in detail in device identification strings.

Device setup classes.

The devices in a device setup class.

INF files and device driver files.

Details of driver packages.

Hardware resources.

Device status.

Expected driver stack.

Third-party driver packages in the driver store.

Search for devices DevCon can search for installed and uninstalled devices on a local or remote computer by hardware ID, device instance ID, or device setup class.

Change device settings DevCon can change the status or configuration of Plug and Play (PnP) devices on the local computer in the following ways −

 + Enable a device.
 + Disable a device.
 + Update drivers (interactive and non-interactive).
 + Install a device (create a devnode and install software).
 + Remove a device from the device tree and delete its device stack.
 + Rescan for Plug and Play devices.
 + Add, delete, and reorder the hardware IDs of root-enumerated devices.
 + Change the upper and lower filter drivers for a device setup class.
 + Add and delete third-party driver packages from the driver store.
 
DevCon (DevCon.exe) is included when you install the WDK, Visual Studio, and the Windows SDK for desktop apps. DevCon.exe kit is available in the following locations when installed.
```bat
%WindowsSdkDir%\tools\x64\devcon.exe
%WindowsSdkDir%\tools\x86\devcon.exe
%WindowsSdkDir%\tools\arm\devcon.exe
```
Syntax
```bat
devcon [/m:\\computer] [/r] command [arguments]
```
wherein

 + /m:`\\computer` − Runs the command on the specified remote computer. The backslashes are required.
 + 
 + /r − Conditional reboot. Reboots the system after completing an operation only if a reboot is required to make a change effective.


command − Specifies a DevCon command.

To list and display information about devices on the computer, use the following commands −

 + DevCon HwIDs
 + DevCon Classes
 + DevCon ListClass
 + DevCon DriverFiles
 + DevCon DriverNodes
 + DevCon Resources
 + DevCon Stack
 + DevCon Status
 + DevCon Dp_enum

To search for information about devices on the computer, use the following commands −
 + DevCon Find
 + DevCon FindAll

To manipulate the device or change its configuration, use the following commands −

 + DevCon Enable
 + DevCon Disable
 + DevCon Update
 + DevCon UpdateNI
 + DevCon Install
 + DevCon Remove
 + DevCon Rescan
 + DevCon Restart
 + DevCon Reboot
 + DevCon SetHwID
 + DevCon ClassFilter
 + DevCon Dp_add
 + DevCon Dp_delete
 
Examples
Following are some examples on how the DevCon command is used.

List all driver files

The following command uses the DevCon DriverFiles operation to list the file names of drivers that devices on the system use. The command uses the wildcard character (*) to indicate all devices on the system. Because the output is extensive, the command uses the redirection character (>) to redirect the output to a reference file, driverfiles.txt.

`devcon driverfiles * > driverfiles.txt`

The following command uses the DevCon status operation to find the status of all devices on the local computer. It then saves the status in the status.txt file for logging or later review. The command uses the wildcard character (*) to represent all devices and the redirection character (>) to redirect the output to the status.txt file.

`devcon status * > status.txt`

The following command enables all printer devices on the computer by specifying the Printer setup class in a DevCon Enable command. The command includes the /r parameter, which reboots the system if it is necessary to make the enabling effective.

`devcon /r enable = Printer`

The following command uses the DevCon Install operation to install a keyboard device on the local computer. The command includes the full path to the INF file for the device (keyboard.inf) and a hardware ID (*PNP030b).

`devcon /r install c:\windows\inf\keyboard.inf *PNP030b`

The following command will scan the computer for new devices.

`devcon scan`

The following command will rescan the computer for new devices.

`devcon rescan`

## Registry

The Registry is one of the key elements on a windows system. It contains a lot of information on various aspects of the operating system. Almost all applications installed on a windows system interact with the registry in some form or the other.

The Registry contains two basic elements: keys and values. Registry keys are container objects similar to folders. Registry values are non-container objects similar to files. Keys may contain values or further keys. Keys are referenced with a syntax similar to Windows' path names, using backslashes to indicate levels of hierarchy.

### Reading from Registry

Reading from the registry is done via the REG QUERY command. This command can be used to retrieve values of any key from within the registry.

Syntax
```bat
REG QUERY [ROOT\]RegKey /v ValueName [/s] 
REG QUERY [ROOT\]RegKey /ve --This returns the (default) value
Where RegKey is the key which needs to be searched for in the registry.
```
Example
```bat
@echo off 
REG QUERY HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Windows\
```

The above command will query all the keys and their respective values under the registry key HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Windows\

### Adding to Registry

Adding to the registry is done via the REG ADD command. Note that in order to add values to the registry you need to have sufficient privileges on the system to perform this operation.

Syntax

The REG ADD command has the following variations. In the second variation, no name is specified for the key and it will add the name of “(Default)” for the key.

REG ADD [ROOT\]RegKey /v ValueName [/t DataType] [/S Separator] [/d Data] [/f]

REG ADD [ROOT\]RegKey /ve [/d Data] [/f]

Where
 + ValueName − The value, under the selected RegKey, to edit.
 + /d Data − The actual data to store as a "String", integer, etc.
 + /f − Force an update without prompting "Value exists, overwrite Y/N".
 + /S Separator − Character to use as the separator in REG_MULTI_SZ values. The default is "\0".
/t DataType − These are the data types defined as per the registry standards which can be −
   - REG_SZ (default)
   - REG_DWORD
   - REG_EXPAND_SZ
   - REG_MULTI_SZ

Example
```bat
@echo off 
REG ADD HKEY_CURRENT_USER\Console /v Test /d "Test Data" 
REG QUERY HKEY_CURRENT_USER\Console /v Test
```

In the above example, the first part is to add a key into the registry under the location HKEY_CURRENT_USER\Console. This key will have a name of Test and the value assigned to the key will be Test Data which will be of the default string type.

The second command just displays what was added to the registry by using the REG QUERY command.

Output
```bat
The operation completed successfully. 
HKEY_CURRENT_USER\Console 
   Test REG_SZ Test Data
```

### Deleting from Registry

Deleting from the registry is done via the REG DEL command. Note that in order to delete values from the registry you need to have sufficient privileges on the system to perform this operation.

Syntax

The REG DELETE command has the following variations. In the second variation, the default value will be removed and in the last variation all the values under the specified key will be removed.
```bat
REG DELETE [ROOT\]RegKey /v ValueName [/f] 
   REG DELETE [ROOT\]RegKey /ve [/f] 
   REG DELETE [ROOT\]RegKey /va [/f]
```
Where
 + ValueName − The value, under the selected RegKey, to edit.
 + /f − Force an update without prompting "Value exists, overwrite Y/N".

Example
```bat
@echo off
REG DELETE HKEY_CURRENT_USER\Console /v Test /f
REG QUERY HKEY_CURRENT_USER\Console /v Test
```

In the above example, the first part is to delete a key into the registry under the location HKEY_CURRENT_USER\Console. This key has the name of Test. The second command just displays what was deleted to the registry by using the REG QUERY command. From this command, we should expect an error, just to ensure that our key was in fact deleted.

### Copying from Registry

Copying from the registry is done via the REG COPY command. Note that in order to copy values from the registry, you need to have sufficient privileges on the system to perform this operation on both the source location and the destination location.

Syntax
```bat
REG COPY [\\SourceMachine\][ROOT\]RegKey [\\DestMachine\][ROOT\]RegKey
```
Example
```bat
@echo off 
REG COPY HKEY_CURRENT_USER\Console HKEY_CURRENT_USER\Console\Test 
REG QUERY HKEY_CURRENT_USER\Console\Test
```

In the above example, the first part is to copy the contents from the location HKEY_CURRENT_USER\Console into the location HKEY_CURRENT_USER\Console\Test on the same machine. The second command is used to query the new location to check if all the values were copied properly.

### Comparing Registry Keys

Comparing registry keys is done via the REG COMPARE command.

Syntax
```bat
REG COMPARE [ROOT\]RegKey [ROOT\]RegKey [/v ValueName] [Output] [/s]
REG COMPARE [ROOT\]RegKey [ROOT\]RegKey [/ve] [Output] [/s]
Wherein Output − /od (only differences) /os (only matches) /oa (all) /on (no output).
```
Example
```bat
@echo off
REG COMPARE HKEY_CURRENT_USER\Console HKEY_CURRENT_USER\Console\Test
```
The above program will compare all of the values between the registry keys HKEY_CURRENT_USER\Console & HKEY_CURRENT_USER\Console\Test.

Output
```bat
Result Compared: Identical
The operation completed successfully.
```

## Network

### net Accounts

View the current password & logon restrictions for the computer.

Syntax
```bat
NET ACCOUNT [/FORCELOGOFF:{minutes | NO}] [/MINPWLEN:length]
[/MAXPWAGE:{days | UNLIMITED}] [/MINPWAGE:days] 
[/UNIQUEPW:number] [/DOMAIN]
```

Wherein
 + FORCELOGOFF − Force the log-off of the current user within a defined time period.
 + MINPWLEN − This is the minimum password length setting to provide for the user.
 + MAXPWAGE − This is the maximum password age setting to provide for the user.
 + MINPWAGE − This is the minimum password age setting to provide for the user.

### NET CONFIG
Displays your current server or workgroup settings.

Syntax

`NET CONFIG`

### NET COMPUTER
Adds or removes a computer attached to the windows domain controller.

Syntax
```
NET COMPUTER \\computername {/ADD | /DEL}
```
Example
```
NET COMPUTER \\dxbtest /ADD
```
Output

The above command will add the machine with the name dxbtest to the domain in which the windows domain controller exists.

### Net user

This command can be used for the following −
 + View the details of a particular user account.
 + Add a user account.
 + Delete a user’s account.
 + Modify a user’s account.
Syntax
```bat
Net user [username [password | *] [options]] [/DOMAIN] 
username {password | *} /ADD [options] [/DOMAIN] 
username [/DELETE] [/DOMAIN]
```
Example

`NET USER`

The above command shows all the accounts defined on a system. Following is the output of the above command.
```
User accounts for \\WIN-50GP30FGO75
-------------------------------------------------------------------------------
Administrator     atlbitbucket      Guest
The command completed successfully.
```

### Net stop/start

This command is used to stop and start a particular service.

Syntax
```bat
Net stop/start [servicename]
```
Example
```
NET STOP Spooler
```
### Net statistics

Display network statistics of the workstation or server.

Syntax
```
Net statistics [SERVER/WORKSTATION]
```
Example
```
Net statistics Server
```

### NET USE

Connects or disconnects your computer from a shared resource or displays information about your connections.

Syntax
```bat
NET USE [devicename | *] [\\computername\sharename[\volume] [password | *]] 
[/USER:[domainname\]username] 
[/USER:[dotted domain name\]username]
[/USER:[username@dotted domain name] 
[/SMARTCARD] 
[/SAVECRED] [[/DELETE] | [/PERSISTENT:{YES | NO}]]
```

where
```
\\computername\sharename − This is the name of the share which needs to be connected to.

/USER − This needs to be specified to ensure that the right credentials are specified when connecting to the network share.
```
Example
```
net use z: \\computer\test
The above command will connect to the share name \\computer\test and assign the Z: drive name to it.
```

Refer:
https://en.wikibooks.org/wiki/Windows_Batch_Scripting