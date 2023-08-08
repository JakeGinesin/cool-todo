# cool-todo
I like to organize my todo list in a specific way. This is a command-line utility to interface with my todo list.

# Syntax
I have a file, `main.todo`, on my machine. This file is just a plaintext bullet list of todo items with the following syntax:
```
- item +category #tag <due-date>
    - sub-item-1 +category #tag <due-date>
    - sub-item-2 (inherits parent's category, tag, due date if not defined)
```
where categories and tags are optional.

### Example
```
- goldwater scholarship northeastern deadline +research <2023-11-27>
- update favorites list on website +misc <2023-09-04>
    - go through main note 
    - go through old conversations +communication
```

# Requirements
`python 3.0`

# Installation
Clone this repo:
```
git clone https://github.com/JakeGinesin/cool-todo-sh
```

Run `make`
```
cd cool-todo-sh && make
```

# Usage
```
$ todo help

Usage: 
  todo [Option]

Options: 
  show:        show items
  categories:  show in use categories
  tags:        show in use tags
  help:        show help msg 

Enter `todo <option> help` for more!
```

```
$ todo show help

Usage: 
  todo show <arg1> <arg2> ...

by default, this just shows everything.

Arguments: 
  -d --date:                     Sort by date
  -c --category:                 Search by category
  -t --tag:                      Search by tag
  -f --file:                     Use a specific file
  -scd --show-date               Show today's date in the output
  -sct --show-category           Show category in the output
  -st --show-tags                Show tags in the output
  --help:                        Shows this message, then exists
```

Searching for a specific category, sorting by date, showing current date
```
$ todo show -c learning -d --show-date
Showing results for +learning in /path/main.todo
Today's date: 2023-08-08

(1) - 2023-08-07 - third chaotic dynamics read
(2) - 2023-09-01 - learn TLA https://learntla.com/
(3) - 2023-09-02 - go through previous cs7800 notes: https://www.ccs.neu.edu/home/hlnguyen/cs7800/fall19/schedule.html
(4) - 2023-09-05 - learning coq via the FRAP course (https://demo.allennlp.org/coreference-resolution/s/upon-receipt-of-an-chunk/S3A6W3Y3T2)
```
