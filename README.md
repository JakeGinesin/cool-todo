# cool-todo-sh
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
