+++ 
title = "01-Getting Started" 
description = "Accessing server and BASH scripting tutorial" 
date = 2020-09-11T02:13:50Z
author = "Axel Hauduc" 
+++


## ORCA Login & Getting Started with the Terminal

Welcome to the first MICB-405 lab! Today, we're going to get started with the essential skills and tools you'll be using for the rest of the course.

## 1. Accessing Bash on Linux or equivalent
In order to use the server your computer will either need a terminal/command-line interface or an emulator. These will be necessary for using the software tools throughout this course, so don’t think you can get away with not familiarizing yourself with one of these! 

If you are running a Unix-compatible operating system like macOS, or a Linux distribution like Ubuntu, simply run the "Terminal" app.

For the those with Windows machines, there are several options available.

If you are running Windows 10, I would highly recommend the Ubuntu [Windows Subsystem for Linux](https://www.microsoft.com/en-ca/p/ubuntu/9nblggh4msv6?activetab=pivot:overviewtab). You will need to follow the instructions on the store page for installation. While it takes slightly longer to install than other solutions, it will allow you to have full Bash/Linux-style functionality on your machine. You can (carefully) practice Bash commands on files in your system just like you were running a Unix-compatible system!

If you have a version of Windows earlier than Windows 10, or the Windows Subsystem for Linux simply doesn't work for you, I would recommend installing [Git Bash](https://gitforwindows.org/). With Git Bash you can ssh into the server and do all the work needed for the course, but has more limited functionality on your local machine.

## 2. Logging in

At this point you should be ready to [log in](https://media2.giphy.com/media/LcfBYS8BKhCvK/giphy.gif?cid=ecf05e4747b1d69a24ea3b94dd23c9634105af0c7416ebb9&rid=giphy.gif). On whichever terminal you are using, you should be able to use the following command, replacing username with your actual username:

```
ssh username@orca1.bcgsc.ca
```

Enter your password when prompted. DON’T FREAK OUT WHEN CHARACTERS DON’T APPEAR - this is a security feature.

Let’s break this command down: ssh is the command and stands for “secure-shell”. It allows users to log on to remote (opposite of ‘local’, which is your computer in this instance) servers. All following text is the argument. There may be many arguments and each of these would be separated by spaces. username is mostly obvious, but crucially this positions your shell in the ‘home’ directory of username on the server’s system with the correct permissions. If everyone were to log on as root (“Administrator” in Windows-speak) this would be bad. orca-wg.bcgsc.ca (everything after the '@') is known as the hostname or domain name and is the name of the device on the network it is connected to. Super-nerds sometimes replace this with the IP address.

## 3. Bonus work
Review the manual pages for ```ls```, ```cd```, and ```pwd``` by typing ```man``` followed by the command. Can you use them to move through your local machine's folder system and find out where you are? How about the Orca server?

To exit the ```man``` page, press q.

Look at the ```man``` pages for ```find``` and ```tree```. How can you use these commands to get an overall picture of the filesystem? How can you use these commands to locate a certain file?

### Delve into man pages and help
1.	What is the difference between the ```man``` page, and ```--help``` or ```-h``` argument added to a command? When would you use either option? (try it on some commands, or look through StackExchange if you're confused)

2.	Here is a list of Bash commands often used in bioinformatics. Look up the ```man``` page for at least one of them. What do you think they do? Hypothetically, in what way do you think they could be used in a bioinformatics context? Which arguments would be the most handy? Discuss within your group!
    1. ```awk```
    2. ```sed```
    3. ```grep```

### Terminal keyboard shortcuts
#### Basics
1. Autocomplete command:
**TAB**
2. Navigate command history:
**↑ ↓**
3. Kill process:
**Ctrl + c**
4. End terminal or ssh session: 
**Ctrl + d**
5. Copy:
**Highlight text & right click**
6. Paste:
**Ctrl + Shift + c**  OR  **right click**
7. Search command history:
**Ctrl + r**

#### Navigating Text
1. Move to beginning of line:
**Ctrl + a**
2. Move to end of line:
**Ctrl + e**
3. Move back one word:
**Alt + b**
4. Move forward one word:
**Alt + f**

#### Advanced
1. Terminal Cut (Kill) text before cursor:
**Ctrl + u**
2. Terminal Cut (Kill) text after cursor:
**Ctrl + k**
3. Terminal Paste (Yank):
**Ctrl + y**
4. Undo in-line action:
**Ctrl + _**

Create a new file by running ```nano testfile.txt``` in your home directory or on your local machine (Use Ctrl + o to save and Ctrl + x to exit ```nano```).

After typing some text, can you navigate, copy, and paste text without using the mouse? With some practice this will be a lot faster.

If you complete these tasks, look here for further reading and excercises!
https://astrobiomike.github.io/unix/getting-started
