## Makefile

- [Makefile tutorial](https://makefiletutorial.com/)

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

## Multiple targets

Use all to specify what to build by default:

```
all: target_1 target_2
```

## .PHONY targets

Use `.PHONY` keyword to ensure that the target will be checked regardless if
a file/folder is present with the same name in the directory

```
.PHONY target_1 target_2
```
