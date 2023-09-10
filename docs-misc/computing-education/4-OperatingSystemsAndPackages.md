---
title: Introduction to Computing 
subtitle: Operating Systems and Package Managers
author: Cain Susko
date: 2023-08-17
colorlinks: true
---

# Operating Systems

Every computer has what is called an _Operating System_ -- in fact, this system
is the primary differentiator between types of computers. For example,
a _Windows_ Computer uses _Microsoft Windows_, and an _Apple_ Computer uses
_OSX_. Even things like smart-phones have an operating system. I-phones, for
example, use the _IOS_ operating system.

The operating system acts as the translator between the human and the computer
chip. This allows a human to click on a button, or run a program -- and the
operating system will translate this action into _Machine Code_ or _Assembly
Language_. Machine code is the most basic way to communicate with a computer --
without using binary.

Because of this, applications must be able to speak the language of an
operating system in order to use the computer -- in the same way that a human
needs to learn the differences between Apple and Windows computers. Finding
applications (a.k.a. Software) for your specific operating system can sometimes
be difficult when looking for them on the Internet -- instead, most operating
systems have a _Package Manager_ which allows you to quickly and easily find
and download software for your computer. Its like the _App Store_ on an
I-phone, accept it is on the command line!

# Package Managers

Every operating system has a package manager -- in fact, some have many
different package managers to choose from. Package managers are essentially
software which allows you to manage, install, delete, and update applications
-- without having to do these processes manually. They allow you to avoid doing
things that might make your files messy -- like having a bunch of useless files
in your Downloads folder after you install an application -- and they give you
piece of mind as you have a program that knows every application you have
installed. Different operating systems can have multiple options for package
managers -- for example:

* Windows has:
  * `winget`
  * `scoop`
  * `chocolatey`
* Apple has:
  * `brew`
* Linux has many different package managers, but the most common ones are:
  * `apt`
  * `pacman`

Each package manager has different commands for using it, however they tend to follow this format:

        packagemanager command packageName

where the different `command`s always include:

        search packageName      -- searches for a package to install
        install packageName     -- installs a package
        update packageName      -- updates a package
        delete packageName      -- deletes a package

# Exercises

0. Try to search for a package you want to install, like `Minecraft`
0. Try to update `cowsay`
0. Try to list all the different commands you can use with your package manager
   (normally this can be done by only entering the name of the package manager
   and pressing enter)
