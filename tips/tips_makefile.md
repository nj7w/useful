## [Makefile Manual](https://www.gnu.org/software/make/manual/make.html)

## [Makefile tutorial](https://makefiletutorial.com/)

## Multiple targets

Use **all** to specify what to build by default:

```
all: target_1 target_2
```

- You can also specify a specific target to build. Example:  
`make target_3` 

## .PHONY targets

Use `.PHONY` keyword to ensure that the target will be checked regardless if
a file/folder is present with the same name in the directory

```
.PHONY target_1 target_2
```

## Target rule spacing: `1 tab` not 4 spaces

All actions of every rule are identified by tabs.  
And, no, four spaces don't make a tab. Only a tab makes a tab.

To check, use the command: `cat -e -t -v makefile_name`

**If you use 4 spaces instead of a tab**, you will get error:  
`:makefile:4: *** missing separator.  Stop.`

## Check if a file exists

**ifeq** (or **ifneq**) must be at the **same indentation level** in the
makefile as the name of the target:

```
my_target:
ifeq ("$(wildcard my_file_name)", "")
    @echo "FILE does NOT exist"
 else
    @echo "FILE exists"
endif
```

