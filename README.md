## My Linux Configurations

This contains my vimrc file which has all of my vim settings, making it easy to
set up my workspace on other computers.

There is also a .vim/colors directory that contains colorschemes I've
downloaded. The one I'm currently using is gruvbox which I edited to
always be in dark-mode

There are also some other generic files such as .bashrc and .profile that
contain edits/aliases at the end.

When on a new machine, I normally clone this repo and create a simulated link to
these files in my home directory so that...
1. Files like .vimrc, .bashrc, .profile are actually used (they need to be in
the home directory)
2. Any changes made to a configuration file only has to be done once because of
the simulated link. There is no need to copy lines or files into this repo when
I make a change.
3. I use softlinks instead of hardlinks because hardlinks are not preserved with
git when pushing/pulling.
