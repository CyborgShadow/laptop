Laptop
======

Laptop is a script to set up an OS X computer for web development, and to keep
it up to date.

It can be run multiple times on the same machine safely. It installs,
upgrades, or skips packages based on what is already installed on the machine.

This particular version of the script is geared toward beginners who want to
set up a Go/Python/Ruby/Chef environment on their Mac. More advanced users can
easily customize the script to install additional
tools. 

Requirements
------------

I support clean installations of these operating systems:

* [macOS Sierra](https://www.apple.com/macos/sierra/) (10.12)
* OS X El Capitan (10.11)
* OS X Yosemite (10.10)
* OS X Mavericks (10.9)

Older versions may work but aren't regularly tested. Bug reports for older
versions are welcome.

Install
-------

Begin by opening the Terminal application on your Mac. The easiest way to open
an application in OS X is to search for it via [Spotlight]. The default
keyboard shortcut for invoking Spotlight is `command-Space`. Once Spotlight
is up, just start typing the first few letters of the app you are looking for,
and once it appears, press `return` to launch it.

In your Terminal window, copy and paste the command below, then press `return`.

```sh
bash <(curl -s https://raw.githubusercontent.com/cyborgshadow/laptop/master/laptop)
```

The [script](https://github.com/cyborgshadow/laptop/blob/master/mac) itself is
available in this repo for you to review if you want to see what it does
and how it works.

Note that the script will ask you to enter your OS X password at various
points. This is the same password that you use to log in to your Mac.
If you don't already have it installed, GitHub for Mac will launch
automatically at the end of the script so you can set up everything you'll
need to push code to GitHub.

**Once the script is done, quit and relaunch Terminal.**

It is highly recommended to run the script regularly to keep your computer up
to date. Once the script has been installed, you'll be able to run it at your
convenience by typing `laptop` and pressing `return` in your Terminal.

[Spotlight]: https://support.apple.com/en-us/HT204014

Debugging
---------

Your last Laptop run will be saved to a file called `laptop.log` in your home
folder. Read through it to see if you can debug the issue yourself. If not,
copy the entire contents of `laptop.log` into a
[new GitHub Issue](https://github.com/cyborgshadow/laptop/issues/new) for me.
Or, attach the whole log file as an attachment.

What it sets up
---------------

* [Flux] for adjusting your Mac's display color so you can sleep better
* [Homebrew] for managing operating system libraries
* [Homebrew Cask] for quickly installing Mac apps from the command line
* [Homebrew Services] so you can easily stop, start, and restart services
* [hub] for interacting with the GitHub API
* [Sublime Text 3] for coding all the things
* [golang] for coding in Go
* [xcode] for compiling things when necessary
* [watch] for running commands repeatedly and parsing output
* [tmux] for Terminal multiplexing
* [curl] with openssl
* [python] for coding in python
* [pyenv] for a simple python environment setup
* [docker] for container virtualization
* [boot2docker] Lightweight distro for docker containers
* [docker-toolbox] for easy access to swarm, compose, etc
* [iTerm2] for tmux friendly terminal
* [Google Chrome] Yet another browser
* [Firefox] Yet another browser
* [Dropbox] For cloud file access
* [Caffeine] for keeping your mac awake
* [TotalFinder] Improved finder for Mac
* [Spectacle] Window Manager
* [Vagrant] Local VM manager
* [Atom] A pretty and full-featured visual editor
* [pdftk] A handy pdf manipulator
* [Google Hangouts] Google's Communication tool
* [Google Drive] Google's Cloud Storage
* [VLC media player] A nice media player
* [Cheatsheet] Handy shortcuts by long hold command
* [Zsh] as your shell (if you opt in)

[Flux]: https://justgetflux.com/
[Homebrew]: http://brew.sh/
[Homebrew Cask]: http://caskroom.io/
[Homebrew Services]: https://github.com/Homebrew/homebrew-services
[hub]: https://github.com/github/hub
[Sublime Text 3]: http://www.sublimetext.com/3
[golang]: https://golang.org/
[xcode]: https://developer.apple.com/xcode/
[watch]: https://linux.die.net/man/1/watch
[tmux]: https://tmux.github.io/
[curl]: https://linux.die.net/man/1/curl
[python]: https://www.python.org/
[pyenv]: https://github.com/pyenv/pyenv
[docker]: https://www.docker.com/
[boot2docker]: http://boot2docker.io/
[docker-toolbox]: https://www.docker.com/products/docker-toolbox
[iTerm2]: https://iterm2.com/
[Google Chrome]: https://www.google.com/intl/en/chrome/browser/
[Firefox]: https://www.mozilla.org/en-US/firefox/new/
[Dropbox]: https://www.dropbox.com/
[Caffeine]: http://lightheadsw.com/caffeine/
[TotalFinder]: https://totalfinder.binaryage.com/
[Spectacle]: https://www.spectacleapp.com/
[Vagrant]: https://www.vagrantup.com/
[Atom]: https://atom.io/
[pdftk]: https://linux.die.net/man/1/pdftk
[Google Hangouts]: https://hangouts.google.com/
[Google Drive]: https://drive.google.com/
[VLC media player]: http://www.videolan.org/vlc/
[Cheatsheet]: https://www.mediaatelier.com/CheatSheet/
[Zsh]: http://www.zsh.org/

It should take less than 30 minutes to install (depends on your machine and
internet connection).

The script also lightly customizes your shell prompt so that it displays your
current directory in orange, followed by the current Ruby version or gemset in
green, and sets the prompt character to `$`. It also allows you to easily
distinguish directories from files when running `ls` by displaying directories
in a different color. Below is a screenshot showing what the colors look like
when using the default Terminal white background, the Solarized Dark theme, and the Solarized Light theme.

![Terminal screenshots](http://cl.ly/image/19022S0q3H1b/download/Image%202015-05-12%20at%2011.31.04%20PM.png)

If you want to use the [Solarized](http://ethanschoonover.com/solarized)
themes, run the following commands in your Terminal:
```bash
cd ~

curl --remote-name https://raw.githubusercontent.com/tomislav/osx-terminal.app-colors-solarized/master/Solarized%20Dark.terminal

curl --remote-name https://raw.githubusercontent.com/tomislav/osx-terminal.app-colors-solarized/master/Solarized%20Light.terminal

open Solarized%20Dark.terminal

open Solarized%20Light.terminal
```

This will add the Solarized themes to your Terminal's Profiles, and if you want to set one of them as the default, go to your Terminal's Preferences,
click on the Settings tab, scroll down to the Solarized Profile, click on it,
then click the Default button. When you open a new window or tab (or if you quit and relaunch Terminal), it will use the Solarized theme.

If you want to try out different prompt colors other than orange and green,
open your `.zshrc` or `.bash_profile` in Sublime Text:

```sh
stext ~/.zshrc
```

Then in the line that starts with `precmd`, replace `{166}` and `{65}` with
any of the 256 possible [Xterm colors](http://upload.wikimedia.org/wikipedia/commons/9/95/Xterm_color_chart.png).
Save the file, then open a new Terminal window or tab to see the changes.


Customize in `~/.laptop.local` and `~/Brewfile.local`
-----------------------------------------------------
```sh
# Go to your OS X user's root directory
cd ~

# Download the sample files to your computer
curl --remote-name https://raw.githubusercontent.com/cyborgshadow/laptop/master/.laptop.local
curl --remote-name https://raw.githubusercontent.com/cyborgshadow/laptop/master/Brewfile.local

# open the files in Sublime Text
stext .laptop.local
stext Brewfile.local
```

Your `~/.laptop.local` is run at the end of the `mac` script.
Put your customizations there. If you want to install additional
tools or Mac apps with Homebrew, add them to your `~/Brewfile.local`.

Write your customizations such that they can be run safely more than once.
See the `mac` script for examples.

Laptop functions such as `fancy_echo`, `pip_install_or_update` and `gem_install_or_update` can be used
in your `~/.laptop.local`.

How to manage background services (such as MySQL)
----------------------------------------------------------
The script does not automatically launch these services after installation
because you might not need or want them to be running. With Homebrew Services,
starting, stopping, or restarting these services is as easy as:

```
brew services start|stop|restart [name of service]
```

For example:

```
brew services start mysql
```

To see a list of all installed services:

```
brew services list
```

To start all services at once:

```
brew services start --all
```

How to switch your shell back to bash from zsh (or vice versa)
--------------------------------------------------------------
1. Find out which shell you're currently running: `echo $SHELL`
2. Find out the location of the shell you want to switch to. For example, if
   you want to switch to `bash`, run `which bash`.
3. Verify if the shell location is included in `/etc/shells`.
   Run `cat /etc/shells` to see the contents of the file.
4. If the location of the shell is included, run `chsh -s [the location of the shell]`.
   For example, if `which bash` returned `/bin/bash`, you would run `chsh -s /bin/bash`.

   If the location of the shell is not in `/etc/shells`, add it, then run the `chsh` command.
   If you have Sublime Text, you can open the file by running `subl /etc/shells`.

Credits
-------

This laptop script is inspired by
[thoughbot's laptop](https://github.com/thoughtbot/laptop) script.

### Public domain

thoughtbot's original work remains covered under an [MIT License](https://github.com/thoughtbot/laptop/blob/c997c4fb5a986b22d6c53214d8f219600a4561ee/LICENSE).

My work on this project is in the worldwide [public domain](LICENSE.md), as are contributions to my project.

> This project is in the public domain within the United States, and copyright and related rights in the work worldwide are waived through the [CC0 1.0 Universal public domain dedication](https://creativecommons.org/publicdomain/zero/1.0/).
>
> All contributions to this project will be released under the CC0 dedication. By submitting a pull request, you are agreeing to comply with this waiver of copyright interest.
